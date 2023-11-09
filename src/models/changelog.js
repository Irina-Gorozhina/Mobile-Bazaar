import { db_conn } from "../db/database.js";
import * as security from "../../security.js";

export function newChangelog(
    id,
    date,
    username,
    message,
    staffId,
    productId
) {
    const obj={
        id,
        date,
        username,
        message,
        staffId,
        productId
     }
     security.makeReadable(obj)
     return obj
}

export function getAll() {
    return db_conn.query("SELECT * FROM changelog ORDER BY changelog_date DESC")
        .then(([queryResult]) => {
            console.log(queryResult[0])
            // convert each result into a model object
            return queryResult.map(
                result => newChangelog(
                    result.changelog_id,
                    result.changelog_date,
                    result.changelog_username,
                    result.changelog_message,
                    result.chnagelog_staffId,
                    result.changelog_productId
                )
            )
        })
}

export function getById(newsID) {
    return db_conn.query("SELECT * FROM changelog WHERE changelog_id = ?", [
        newsID,
    ]).then(([queryResult]) => {
        // check that at least 1 order was found
        if (queryResult.length > 0) {
            // get the first matching result
            const result = queryResult[0]

            // convert result into a model object
            return newChangelog(
                result.changelog_id,
                result.changelog_date,
                result.changelog_username,
                result.changelog_message,
                result.chnagelog_staffId,
                result.changelog_productId
            )
        } else {
            return Promise.reject("no matching results")
        }

    })
}

export function create(changelog) {
    security.sanitize(changelog)
    console.log(changelog);
    return db_conn.query(`
    INSERT INTO changelog
    (changelog_id, changelog_date, changelog_username, changelog_message, chnagelog_staffId, changelog_productId)
    VALUES (?, now(), ?, ?, ?, ?)
    `, [changelog.id, changelog.username, changelog.message, changelog.staffId, changelog.productId])
}

export function update(changelog) {
    security.sanitize(changelog)
    return db_conn.query(
        `
        UPDATE changelog
        SET changelog_username = ?, changelog_message = ?
        WHERE changelog_id = ?
    `,
        [changelog.username, changelog.message, changelog.id]
    );
}

export function deleteById(id) {
    return db_conn.query("DELETE FROM changelog WHERE changelog_id = ?", [
        id,
    ]);
}

export function getAllForDateRange(dateStart, dateEnd) {
	// because we're storing datetime in database, but just searching by DATE, we need from the start of the first date
	// to the END of the next date ... or, close enough, the end date plus 1
    console.log(dateStart, dateEnd);
	var endDateTime = new Date(dateEnd);
	endDateTime.setDate(endDateTime.getDate() + 1);

	const dateStartSQL = new Date(dateStart)
		.toISOString()
		.slice(0, 19)
		.replace("T", " ");
	const dateEndSQL = endDateTime.toISOString().slice(0, 19).replace("T", " ");

    console.log(dateStartSQL, dateEndSQL);
	// console.log(
	// 	"In MODEL - Changelogs between " + dateStartSQL + " and " + dateEndSQL
	// );

	return db_conn
		.query(
			`SELECT
			*
			FROM changelog
			WHERE changelog_date BETWEEN ? and ?
			ORDER BY changelog_date DESC
			`,
			[dateStartSQL, dateEndSQL]
		)
		.then(([queryResult]) => {
            // convert each result into a model object
            return queryResult.map(
                result => newChangelog(
                    result.changelog_id,
                    result.changelog_date,
                    result.changelog_username,
                    result.changelog_message,
                    result.changelog_staffId,
                    result.changelog_productId
                )
            )
        })
}
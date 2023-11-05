import { db_conn } from "../db/database.js";

export function newChangelog(
    id,
    date,
    username,
    message,
) {
    return {
        id,
        date,
        username,
        message
    }
}

export function getAll() {
    return db_conn.query("SELECT * FROM changelog")
        .then(([queryResult]) => {
            // convert each result into a model object
            return queryResult.map(
                result => newChangelog(
                    result.changelog_id,
                    result.changelog_date,
                    result.changelog_username,
                    result.changelog_message
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
                result.changelog_message
            )
        } else {
            return Promise.reject("no matching results")
        }

    })
}

export function create(changelog) {
    return db_conn.query(`
    INSERT INTO changelog
    (changelog_id, changelog_date, changelog_username, changelog_message)
    VALUES (?, now(), ?, ?)
    `, [changelog.id, changelog.username, changelog.message])
}

export function update(changelog) {
    console.log(changelog);
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


import validator from "validator";

// UNescape all fields that are string, after getting from in DB
export function makeReadable(obj) {
	// console.log("BEFORE unescape: " + obj.order_id);
	Object.keys(obj).forEach((key) => {
		if (typeof obj[key] == "string" && !obj[key].startsWith("$2a")) {
			obj[key] = validator.unescape(obj[key]);
		}
	});
	// console.log("AFTER  unescape: " + obj.order_id + "\n");
}

// escape all fields that are string, before putting in DB
export function sanitize(obj) {
	// console.log("BEFORE escape: " + obj.order_id);

	Object.keys(obj).forEach((key) => {
		if (typeof obj[key] == "string" && !obj[key].startsWith("$2a")) {
			// don't escape a password!!!
			obj[key] = validator.escape(obj[key]);
		}
	});
	// console.log("AFTER  escape: " + obj.order_id + "\n");
}
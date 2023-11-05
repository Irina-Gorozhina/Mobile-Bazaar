import express from "express";
import bcrypt from "bcryptjs";
import access_control from "../access_control.js";
import * as Users from './../models/staff.js';
import * as Changelog from "../models/changelog.js";

const adminChangelogController = express.Router();

adminChangelogController.get("/admin_changelog",
    access_control(["admin", "stock", "sales"]),
    (request, response) => {
        const editID = request.query.edit_id;
        if (editID) {
            Promise.all([
                Changelog.getAll(),
                Changelog.getById(editID),
                Users.getAll()
            ]).then(([allChangelog, editChangelog, allUsers]) => {
                response.status(200).render("admin_changelog", {
                    allItems: allChangelog,
                    editItem: editChangelog,
                    allUsers,
                    accessRole: request.session.user.accessRole,
                });
            }).catch(error => {
                response.status(500).send("An error happened! " + error);
            });
        } else {
            Promise.all([
                Changelog.getAll(),
                Users.getAll()
            ]).then(([allChangelog, allUsers]) => {
                response.status(200).render("admin_changelog", {
                    allItems: allChangelog,
                    allUsers,
                    editItem: {
                        id: 0,
                        date: "",
                        username: "",
                        message: "",
                    },
                    accessRole: request.session.user.accessRole,
                });
            }).catch(error => {
                response.status(500).send("An error happened! " + error);
            });
        }
    });

adminChangelogController.post("/admin_changelog",
    access_control(["admin", "stock", "sales"]),
    (request, response) => {
        const formData = request.body;

        const editModel = Changelog.newChangelog(
            formData.id,
            null,
            formData.username,
            formData.message
        );

        if (formData.action === "create") {
            Changelog.create(editModel).then(([result]) => {
                response.redirect("/admin_changelog");
            });
        } else if (formData.action === "update") {
            Changelog.update(editModel).then(([result]) => {
                response.redirect("/admin_changelog");
            });
        } else if (formData.action === "delete") {
            Changelog.deleteById(editModel.id).then(([result]) => {
                response.redirect("/admin_changelog");
            });
        }
    });

export default adminChangelogController;

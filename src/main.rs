mod models;
mod routes;

use rocket::fairing::AdHoc;
use rocket::fs::{relative, FileServer};
use rocket::{launch, routes, Build, Rocket};
use rocket_dyn_templates::Template;
use routes::{tasks, topics};
use rusqlite::Connection;
use std::sync::Mutex;

struct DbConn(Mutex<Connection>);

#[launch]
fn rocket() -> Rocket<Build> {
    rocket::build()
        .mount("/static", FileServer::from(relative!("static")))
        .mount("/", routes![tasks::solo_tasks, topics::topics])
        //.attach(Template::fairing())
        .attach(AdHoc::try_on_ignite("SQLite", move |rocket| async move {
            match Connection::open("sql/database.db") {
                Ok(conn) => Ok(rocket.manage(DbConn(Mutex::new(conn)))),
                Err(e) => {
                    eprintln!("Failed to connect to SQLite: {}", e);
                    std::process::exit(1);
                }
            }
        }))
}

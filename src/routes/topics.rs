use rocket::get;

#[get("/topics")]
pub fn topics() -> &'static str {
    "Aqui van los topics"
}

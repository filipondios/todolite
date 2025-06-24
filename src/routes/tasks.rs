use rocket::get;

#[get("/solo_tasks")]
pub fn solo_tasks() -> &'static str {
    "Aqui van las tasks solas"
}

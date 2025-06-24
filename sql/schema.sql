
create table topic (
    id integer primary key autoincrement,
    title text not null,
    description text,
    creation_date datetime not null default current_timestamp,
    open integer not null default 1
);

create table task(
    id integer primary key autoincrement,
    topic_id integer references topic(id),
    description text not null,
    creation_date datetime not null default current_timestamp,
    due_date datetime,
    priority integer not null default 5 check (priority between 1 and 10),
    completed integer not null default 1
);

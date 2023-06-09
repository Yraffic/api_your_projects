create table project (
	id serial primary key,
 	name text not null,
  description text,
  createdAt timestamp null default current_timestamp
)

create table tasks (
  task_id serial primary key,
  description text,
  created_at timestamp null default current_timestamp,
  date_close date,
  project_id integer not null references project(id)
);

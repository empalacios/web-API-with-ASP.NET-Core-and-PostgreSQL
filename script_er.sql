CREATE SCHEMA todoapi;

CREATE TABLE todoapi.todo_items (
    item_id     serial  NOT NULL,
    item_name   text    NOT NULL,
    is_complete boolean NOT NULL,
    item_secret text,
    CONSTRAINT todoitems_pk PRIMARY KEY (item_id)
);


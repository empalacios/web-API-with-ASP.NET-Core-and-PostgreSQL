CREATE TABLE todo_items (
    "Id"         serial  NOT NULL,
    "Name"       text    NOT NULL,
    "IsComplete" boolean NOT NULL,
    "Secret"     text,
    CONSTRAINT todoitems_pk PRIMARY KEY ("Id")
);


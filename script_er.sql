-- DROP SCHEMA basedeprueba;

CREATE SCHEMA todoapi;

-- Drop table

-- DROP TABLE basedeprueba.organizacion;

CREATE TABLE todoapi.todoitem (
    id          serial  NOT NULL,
    name        text    NOT NULL,
    is_complete boolean NOT NULL,
    CONSTRAINT todoapi_fk PRIMARY KEY (id)
);


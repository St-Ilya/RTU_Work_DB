/*
 procedure
 get the table name as input, return the number of rows in it
 */

/*
 create or replace function pr1 (tbl regclass) returns integer as $$
begin
    set result = (select count(*) from tbl);
end;
$$ language sql;
 */


/* ------------------------------------- */
create function pr1 (tablename text) returns integer
as
$body$
declare
    result integer;
BEGIN
    execute tablename into result;
    return result;
end;
$body$
    language plpgsql;


/* ------------------------------------- */
create function
    cnt_rows(schema text, tablename text) returns integer
as
$body$
declare
    result integer;
    query varchar;
begin
    query := 'SELECT count(1) FROM ' || schema || '.' || tablename;
    execute query into result;
    return result;
end;
$body$
    language plpgsql;

/* ------------------------------------- */
CREATE OR REPLACE FUNCTION some_f(_tbl regclass, OUT result integer)
    LANGUAGE plpgsql AS
$func$
BEGIN
    EXECUTE format('SELECT (EXISTS (SELECT FROM %s WHERE id = 1))::int', _tbl)
        INTO result;
END
$func$;
CREATE OR REPLACE FUNCTION tripAfterDate (after timestamp without time zone)
RETURNS TABLE(id integer, plane character varying, town_from character varying, town_out character varying, time_out timestamp)
LANGUAGE 'plpgsql'
COST 100
VOLATILE PARALLEL UNSAFE
ROWS 1000

AS $BODY$ BEGIN
    return query (
        select * from trip
                 where trip.time_out > after
    );
end;
$BODY$;

ALTER FUNCTION tripAfterDate(after timestamp without time zone)
    OWNER TO postgres;

----------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE CountTable (IN wao character varying, INOUT numberOfLines integer)
LANGUAGE 'pspgsql'
AS $BODY$
    BEGIN
    EXECUTE 'Select count(*) From'|| quote_ident(wao) INTO numberOfLines;
    -- RAISE NOTICE 'count -> %', cnt;
    end;
$BODY$;
ALTER PROCEDURE CountTable(character varying, integer)
OWNER TO postgres;
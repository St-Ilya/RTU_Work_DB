create table trip
(
    id        integer,
    company   integer,
    plane     varchar,
    town_from varchar,
    town_to   varchar,
    time_out  varchar,
    time_in   varchar
);

alter table trip
    owner to postgres;


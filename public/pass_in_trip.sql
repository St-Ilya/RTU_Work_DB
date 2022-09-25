create table pass_in_trip
(
    id        integer,
    trip      integer,
    passenger integer,
    place     varchar
);

alter table pass_in_trip
    owner to postgres;


drop table if exists pass_in_trip;
create table pass_in_trip
(
    id        integer primary key,
    trip      integer references trip(id),
    passenger integer references passenger(id),
    place     varchar
);

INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (1, 1100, 1, '1a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (2, 1123, 1, '2a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (3, 1123, 1, '4c');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (4, 1123, 1, '4b');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (5, 1124, 1, '2d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (6, 1145, 1, '2c');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (7, 1181, 1, '1a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (8, 1181, 1, '1b');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (9, 1181, 1, '3c');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (10, 1181, 1, '1b');

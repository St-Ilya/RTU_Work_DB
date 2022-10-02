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
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (11, 1182, 5, '4b');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (12, 1187, 8, '3a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (13, 1188, 8, '3a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (14, 1182, 9, '6d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (15, 1145, 5, '1d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (16, 1187, 10, '3d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (17, 8882, 37, '1a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (18, 7771, 37, '1c');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (19, 7772, 37, '1a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (20, 8881, 37, '1d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (21, 7778, 10, '2a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (22, 7772, 10, '3a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (23, 7771, 11, '4a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (24, 7771, 11, '1b');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (25, 7771, 11, '5a');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (26, 7772, 12, '1d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (27, 7773, 13, '2d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (28, 7772, 13, '1b');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (29, 8882, 14, '3d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (30, 7771, 14, '4d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (31, 7771, 14, '5d');
INSERT INTO pass_in_trip (id, trip, passenger, place) VALUES (32, 7772, 14, '1c');

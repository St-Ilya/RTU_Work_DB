create table trip
(
    id        integer,
    company   integer,
    plane     varchar,
    town_from varchar,
    town_to   varchar,
    time_out  date,
    time_in   date
);

INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01T14:30:00.000Z', '1900-01-01T17:50:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1100, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01T08:12:00.000Z', '1900-01-01T11:45:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1123, 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01T16:20:00.000Z', '1900-01-02T03:40:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1124, 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01T09:00:00.000Z', '1900-01-01T19:50:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01T09:35:00.000Z', '1900-01-01T11:23:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01T17:55:00.000Z', '1900-01-01T20:01:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1181, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01T06:12:00.000Z', '1900-01-01T08:01:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1182, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01T12:35:00.000Z', '1900-01-01T14:30:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1187, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01T15:42:00.000Z', '1900-01-01T17:39:00.000Z');
INSERT INTO public.trip (id, company, plane, town_from, town_to, time_out, time_in) VALUES (1188, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01T22:50:00.000Z', '1900-01-02T00:48:00.000Z');



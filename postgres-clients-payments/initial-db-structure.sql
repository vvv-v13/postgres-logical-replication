CREATE TABLE clients (
    id bigserial,
    email text
);


CREATE TABLE payments (
    id bigserial,
    time_stamp timestamptz default now(),
    email text,
    amount numeric
);

CREATE index ON payments using btree (time_stamp);
CREATE index ON payments using btree (email);

CREATE SUBSCRIPTION clients_payments_sub CONNECTION 'dbname=postgres host=postgres-master user=postgres' PUBLICATION clients_payments_pub;


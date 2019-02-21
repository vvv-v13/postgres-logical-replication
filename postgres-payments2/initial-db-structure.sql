CREATE TABLE payments (
    id bigserial,
    time_stamp timestamptz default now(),
    email text,
    amount numeric
);

CREATE index ON payments using btree (time_stamp);
CREATE index ON payments using btree (email);

CREATE SUBSCRIPTION payments2_sub CONNECTION 'dbname=postgres host=postgres-master user=postgres' PUBLICATION payments2_pub;

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


CREATE PUBLICATION clients_payments_pub FOR TABLE clients, payments;
CREATE PUBLICATION payments_pub FOR TABLE payments;
CREATE PUBLICATION payments2_pub FOR TABLE payments;

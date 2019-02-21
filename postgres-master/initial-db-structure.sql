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


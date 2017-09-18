#!/usr/bin/env bash

cat <<SETUP > /home/ubuntu/setup.cql
CREATE KEYSPACE cycling
  WITH REPLICATION = {
   'class' : 'SimpleStrategy',
   'replication_factor' : 1
  };

CREATE TABLE cycling.users (firstname text PRIMARY KEY, lastname text);

INSERT INTO cycling.users (firstname, lastname) VALUES ('foo', 'bar');
INSERT INTO cycling.users (firstname, lastname) VALUES ('bar', 'baz');
INSERT INTO cycling.users (firstname, lastname) VALUES ('baz', 'bonk');
SETUP

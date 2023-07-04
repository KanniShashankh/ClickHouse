DROP DATABASE IF EXISTS test_02771;

CREATE DATABASE test_02771;

CREATE TABLE test_02771.t (x UInt8) ENGINE = MergeTree() ORDER BY x;

INSERT INTO test_02771.t SELECT number FROM numbers(10);

SELECT t.x FROM test_02771.t ORDER BY t.x;

DROP DATABASE IF EXISTS test_02771;

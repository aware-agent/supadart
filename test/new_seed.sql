-- Numeric Types Table
CREATE TABLE public.numeric_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_bigint BIGINT GENERATED BY DEFAULT AS IDENTITY,
    test_bigint_array BIGINT[] NULL,
    test_bigserial BIGSERIAL,
    test_bigserial_array BIGINT[] NULL,
    test_integer INTEGER NULL,
    test_integer_array INTEGER[] NULL,
    test_smallint SMALLINT NULL,
    test_smallint_array SMALLINT[] NULL,
    test_smallserial SMALLSERIAL,
    test_smallserial_array SMALLINT[] NULL,
    test_serial SERIAL,
    test_serial_array INTEGER[] NULL,
    test_double DOUBLE PRECISION NULL,
    test_double_array DOUBLE PRECISION[] NULL,
    test_real REAL NULL,
    test_real_array REAL[] NULL,
    test_numeric NUMERIC NULL,
    test_numeric_array NUMERIC[] NULL
);

-- String Types Table
CREATE TABLE public.string_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_uuid UUID NULL,
    test_uuid_array UUID[] NULL,
    test_character CHARACTER(1) NULL,
    test_character_array CHARACTER(1)[] NULL,
    test_charactervarying CHARACTER VARYING NULL,
    test_charactervarying_array CHARACTER VARYING[] NULL,
    test_text TEXT NULL,
    test_text_array TEXT[] NULL
);

-- Date and Time Types Table
CREATE TABLE public.datetime_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_date DATE NULL,
    test_date_array DATE[] NULL,
    test_time TIME WITHOUT TIME ZONE NULL,
    test_time_array TIME WITHOUT TIME ZONE[] NULL,
    test_timetz TIME WITH TIME ZONE NULL,
    test_timetz_array TIME WITH TIME ZONE[] NULL,
    test_timestamp TIMESTAMP WITHOUT TIME ZONE NULL,
    test_timestamp_array TIMESTAMP WITHOUT TIME ZONE[] NULL,
    test_timestamptz TIMESTAMP WITH TIME ZONE NULL,
    test_timestamptz_array TIMESTAMP WITH TIME ZONE[] NULL,
    test_interval INTERVAL NULL,
    test_interval_array INTERVAL[] NULL
);

-- Boolean and Bit Types Table
CREATE TABLE public.boolean_bit_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_boolean BOOLEAN NULL,
    test_boolean_array BOOLEAN[] NULL,
    test_bit BIT(1) NULL,
    test_bit_array BIT(1)[] NULL,
    test_bitvarying BIT VARYING NULL,
    test_bitvarying_array BIT VARYING[] NULL
);

-- Geometric Types Table
CREATE TABLE public.geometric_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_point POINT NULL,
    test_point_array POINT[] NULL,
    test_line LINE NULL,
    test_line_array LINE[] NULL,
    test_lseg LSEG NULL,
    test_lseg_array LSEG[] NULL,
    test_box BOX NULL,
    test_box_array BOX[] NULL,
    test_path PATH NULL,
    test_path_array PATH[] NULL,
    test_polygon POLYGON NULL,
    test_polygon_array POLYGON[] NULL,
    test_circle CIRCLE NULL,
    test_circle_array CIRCLE[] NULL
);

-- Network Address Types Table
CREATE TABLE public.network_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_cidr CIDR NULL,
    test_cidr_array CIDR[] NULL,
    test_inet INET NULL,
    test_inet_array INET[] NULL,
    test_macaddr MACADDR NULL,
    test_macaddr_array MACADDR[] NULL,
    test_macaddr8 MACADDR8 NULL,
    test_macaddr8_array MACADDR8[] NULL
);

-- JSON Types Table
CREATE TABLE public.json_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_json JSON NULL,
    test_json_array JSON[] NULL,
    test_jsonb JSONB NULL,
    test_jsonb_array JSONB[] NULL
);

-- Binary Data and XML Types Table
CREATE TABLE public.binary_xml_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_bytea BYTEA NULL,
    test_bytea_array BYTEA[] NULL,
    test_xml XML NULL,
    test_xml_array XML[] NULL
);

-- Miscellaneous Types Table
CREATE TABLE public.misc_types (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    test_money MONEY NULL,
    test_money_array MONEY[] NULL,
    test_pg_lsn PG_LSN NULL,
    test_pg_lsn_array PG_LSN[] NULL,
    test_pg_snapshot PG_SNAPSHOT NULL,
    test_pg_snapshot_array PG_SNAPSHOT[] NULL,
    test_tsquery TSQUERY NULL,
    test_tsquery_array TSQUERY[] NULL,
    test_tsvector TSVECTOR NULL,
    test_tsvector_array TSVECTOR[] NULL,
    test_txid_snapshot TXID_SNAPSHOT NULL,
    test_txid_snapshot_array TXID_SNAPSHOT[] NULL
);


-- Cleanup Qeuries
DROP TABLE IF EXISTS public.numeric_types;
DROP TABLE IF EXISTS public.string_types;
DROP TABLE IF EXISTS public.datetime_types;
DROP TABLE IF EXISTS public.boolean_bit_types;
DROP TABLE IF EXISTS public.geometric_types;
DROP TABLE IF EXISTS public.network_types;
DROP TABLE IF EXISTS public.json_types;
DROP TABLE IF EXISTS public.binary_xml_types;
DROP TABLE IF EXISTS public.misc_types;


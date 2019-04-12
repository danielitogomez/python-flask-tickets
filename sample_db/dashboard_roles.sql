--
-- PostgreSQL database cluster dump
--

-- Started on 2019-04-12 17:07:03 UTC

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE dashboard;
ALTER ROLE dashboard WITH SUPERUSER INHERIT NOCREATEROLE NOCREATEDB LOGIN NOREPLICATION NOBYPASSRLS PASSWORD 'md51813ed4b25875172b8314f5a17e8d833';
CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;




-- Completed on 2019-04-12 17:07:04 UTC

--
-- PostgreSQL database cluster dump complete
--


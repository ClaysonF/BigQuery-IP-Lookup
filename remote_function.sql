CREATE OR REPLACE FUNCTION `gcp-big-query-remote-function.iplookup.lookup`(ip_address STRING)
RETURNS STRING
REMOTE WITH CONNECTION `170010392969.eu.gcf-conn`
OPTIONS (
-- change this to reflect the Trigger URL of your cloud function (look for the TRIGGER tab)
endpoint = 'https://europe-west3-gcp-big-query-remote-function.cloudfunctions.net/bigquery-iplookup'
);
CREATE OR REPLACE TABLE `gcp-big-query-remote-function.iplookup.example_dataset` (
ip_address STRING);
    
INSERT INTO `gcp-big-query-remote-function.iplookup.example_dataset`(ip_address)
VALUES ('190.61.88.147'),
       ('139.99.237.62'),
       ('20.111.54.16'),
       ('185.143.146.171'),
       ('121.126.20.41');
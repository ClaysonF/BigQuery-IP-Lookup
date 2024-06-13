WITH A AS (SELECT `gcp-big-query-remote-function.iplookup.lookup`(ip_address) ip_address_location,ip_address 
FROM `gcp-big-query-remote-function.iplookup.example_dataset`)
    
SELECT
      ip_address,
      json_value(ip_address_location, '$.country') country,
      json_value(ip_address_location, '$.state') state,
      json_value(ip_address_location, '$.city') city,
      json_value(ip_address_location, '$.postal_code') postal_code,
      json_value(ip_address_location, '$.latitude') latitude,
      json_value(ip_address_location, '$.longitude') longitude
 FROM A;
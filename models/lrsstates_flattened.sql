-- c3po_progress.flattened_lrsstates source
SELECT (_airbyte_raw_lrsstates._airbyte_data -> '_id'::text) ->> 'tenantId'::text AS tenantid,
    (_airbyte_raw_lrsstates._airbyte_data -> '_id'::text) ->> 'activityId'::text AS activityid,
    (((_airbyte_raw_lrsstates._airbyte_data -> '_id'::text) -> 'agent'::text) -> 'account'::text) ->> 'name'::text AS account_name,
    (((_airbyte_raw_lrsstates._airbyte_data -> '_id'::text) -> 'agent'::text) -> 'account'::text) ->> 'homePage'::text AS account_homepage,
    (_airbyte_raw_lrsstates._airbyte_data -> '_id'::text) ->> 'stateId'::text AS stateid,
    _airbyte_raw_lrsstates._airbyte_data ->> '_class'::text AS _class,
    (_airbyte_raw_lrsstates._airbyte_data -> 'contents'::text) ->> 'location'::text AS contents_location,
    (_airbyte_raw_lrsstates._airbyte_data -> 'contents'::text) ->> 'state_string'::text AS contents_state_string,
    _airbyte_raw_lrsstates._airbyte_data ->> 'location'::text AS location,
    _airbyte_raw_lrsstates._airbyte_data ->> 'createdAt'::text AS createdat,
    _airbyte_raw_lrsstates._airbyte_data ->> 'version'::text AS version
   FROM c3po_progress._airbyte_raw_lrsstates

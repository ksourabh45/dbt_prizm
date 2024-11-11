-- c3po_progress.flattened_attemptsummaries source
SELECT _airbyte_raw_attemptsummaries._airbyte_data ->> '_id'::text AS _id,
    _airbyte_raw_attemptsummaries._airbyte_data ->> '_class'::text AS _class,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'groupId'::text AS groupid,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'shortId'::text AS shortid,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'location'::text AS location,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'createdAt'::text AS createdat,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'learnerId'::text AS learnerid,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'resourceId'::text AS resourceid,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'nextOrdinal'::text AS nextordinal,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'resourceType'::text AS resourcetype,
    _airbyte_raw_attemptsummaries._airbyte_data ->> 'submittedAttempts_aibyte_transform'::text AS submittedattempts_aibyte_transform
   FROM c3po_progress._airbyte_raw_attemptsummaries;
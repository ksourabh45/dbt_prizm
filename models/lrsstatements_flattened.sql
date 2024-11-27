SELECT
    -- Top-level fields
    "_airbyte_data"->'_id'->>'tenantId' AS tenant_id,
    "_airbyte_data"->'_id'->>'statementId' AS statement_id,
    "_airbyte_data"->'verb'->>'id' AS verb_id,
    "_airbyte_data"->'verb'->'display'->>'en-US' AS verb_display,
    
    -- Actor fields
    "_airbyte_data"->'actor'->>'_class' AS actor_class,
    "_airbyte_data"->'actor'->'account'->>'name' AS actor_account_name,
    "_airbyte_data"->'actor'->'account'->>'homePage' AS actor_account_home_page,

    -- Object fields
    "_airbyte_data"->'object'->>'id' AS object_id,
    "_airbyte_data"->'object'->>'_class' AS object_class,
    "_airbyte_data"->'object'->'definition'->'name'->>'en-US' AS object_name,
    "_airbyte_data"->'object'->'definition'->>'type' AS object_type,
    "_airbyte_data"->'object'->'definition'->'description'->>'en-US' AS object_description,
    "_airbyte_data"->'object'->'definition'->>'interactionType' AS object_interaction_type,

    -- Result fields
    "_airbyte_data"->'result'->'score'->>'max' AS score_max,
    "_airbyte_data"->'result'->'score'->>'min' AS score_min,
    "_airbyte_data"->'result'->'score'->>'raw' AS score_raw,
    "_airbyte_data"->'result'->'score'->>'scaled' AS score_scaled,
    "_airbyte_data"->'result'->>'completion' AS completion,
    "_airbyte_data"->'result'->'extensions'->>'https://mauthor.com/xapi/extensions/result/page-name' AS page_name,
    "_airbyte_data"->'result'->'extensions'->>'https://mauthor.com/xapi/extensions/result/page-number' AS page_number,
    "_airbyte_data"->'result'->'extensions'->>'https://mauthor.com/xapi/extensions/result/checks-count' AS checks_count,
    "_airbyte_data"->'result'->'extensions'->>'https://mauthor.com/xapi/extensions/result/errors-count' AS errors_count,
    "_airbyte_data"->'result'->'extensions'->>'https://mauthor.com/xapi/extensions/result/mistake-count' AS mistake_count,

    -- Context fields
    "_airbyte_data"->'context'->'extensions'->>'http://id.tincanapi.com/extension/attempt-id' AS attempt_id,
    "_airbyte_data"->'context'->>'registration' AS registration,
    "_airbyte_data"->'context'->'contextActivities'->'parent'->0->>'id' AS parent_activity_id,
    "_airbyte_data"->'context'->'contextActivities'->'category'->0->>'id' AS category_id,
    "_airbyte_data"->'context'->'contextActivities'->'grouping'->0->>'id' AS grouping_id,
    "_airbyte_data"->'context'->'contextActivities'->'grouping'->0->'definition'->'name'->>'en-US' AS grouping_name,
    "_airbyte_data"->'context'->'contextActivities'->'grouping'->1->>'id' AS grouping_course_id,

    -- Authority fields
    "_airbyte_data"->'authority'->>'mbox' AS authority_mbox,
    "_airbyte_data"->'authority'->>'name' AS authority_name,

    -- Timestamp
    "_airbyte_data"->'timestamp'->>'instant' AS timestamp_instant,
    "_airbyte_data"->'timestamp'->>'offset' AS timestamp_offset
FROM c3po_progress._airbyte_raw_lrsstatements;

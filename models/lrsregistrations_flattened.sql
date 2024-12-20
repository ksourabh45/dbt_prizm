-- c3po_progress.flattened_lrsregistrations source
SELECT (_airbyte_raw_lrsregistrations._airbyte_data -> '_id'::text) ->> 'tenantId'::text AS tenantid,
    (_airbyte_raw_lrsregistrations._airbyte_data -> '_id'::text) ->> 'registrationId'::text AS registrationid,
    (_airbyte_raw_lrsregistrations._airbyte_data -> 'actor'::text) ->> '_class'::text AS actor_class,
    ((_airbyte_raw_lrsregistrations._airbyte_data -> 'actor'::text) -> 'account'::text) ->> 'name'::text AS account_name,
    ((_airbyte_raw_lrsregistrations._airbyte_data -> 'actor'::text) -> 'account'::text) ->> 'homePage'::text AS account_homepage,
    _airbyte_raw_lrsregistrations._airbyte_data ->> '_class'::text AS _class,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'status'::text AS status,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'score'::text) ->> 'max'::text AS score_max,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'score'::text) ->> 'min'::text AS score_min,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'score'::text) ->> 'raw'::text AS score_raw,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'score'::text) ->> 'scaled'::text AS score_scaled,
    ((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) ->> 'objectId'::text AS result_objectid,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'objectName'::text) ->> 'en-US'::text AS result_objectname,
    ((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) ->> 'responseCorrect'::text AS result_responsecorrect,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'objectDescription'::text) ->> 'en-US'::text AS result_objectdescription,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'responseExtensions'::text) ->> 'https://mauthor.com/xapi/extensions/result/page-name'::text AS result_page_name,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'responseExtensions'::text) ->> 'https://mauthor.com/xapi/extensions/result/page-number'::text AS result_page_number,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'responseExtensions'::text) ->> 'https://mauthor.com/xapi/extensions/result/checks-count'::text AS result_checks_count,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'responseExtensions'::text) ->> 'https://mauthor.com/xapi/extensions/result/errors-count'::text AS result_errors_count,
    (((_airbyte_raw_lrsregistrations._airbyte_data -> 'results'::text) -> 0) -> 'responseExtensions'::text) ->> 'https://mauthor.com/xapi/extensions/result/mistake-count'::text AS result_mistake_count,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'location'::text AS location,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'createdAt'::text AS createdat,
    (_airbyte_raw_lrsregistrations._airbyte_data -> 'lastScore'::text) ->> 'max'::text AS lastscore_max,
    (_airbyte_raw_lrsregistrations._airbyte_data -> 'lastScore'::text) ->> 'min'::text AS lastscore_min,
    (_airbyte_raw_lrsregistrations._airbyte_data -> 'lastScore'::text) ->> 'raw'::text AS lastscore_raw,
    (_airbyte_raw_lrsregistrations._airbyte_data -> 'lastScore'::text) ->> 'scaled'::text AS lastscore_scaled,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'activityId'::text AS activityid,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'completedAt'::text AS completedat,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'submittedAt'::text AS submittedat,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastDuration'::text AS lastduration,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastScoreVerb'::text AS lastscoreverb,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastAccessDate'::text AS lastaccessdate,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'firstAccessDate'::text AS firstaccessdate,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastDurationVerb'::text AS lastdurationverb,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastCompletionVerb'::text AS lastcompletionverb,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastScoreStatement'::text AS lastscorestatement,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastDurationStatement'::text AS lastdurationstatement,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'scormProfileAttemptIri'::text AS scormprofileattemptiri,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastCompletionStatement'::text AS lastcompletionstatement,
    _airbyte_raw_lrsregistrations._airbyte_data ->> 'lastSubmissionStatement'::text AS lastsubmissionstatement
   FROM c3po_progress._airbyte_raw_lrsregistrations

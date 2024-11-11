-- c3po_progress.flattened_lrsstatements source
SELECT a._class AS actor_class,
    ac.name AS actor_account_name,
    ac.homepage AS actor_account_homepage,
    auth.mbox AS authority_mbox,
    auth.name AS authority_name,
    auth._class AS authority_class,
    rs.completion AS result_completion,
    rs.success AS result_success,
    rs.duration AS result_duration,
    rs.response AS result_response,
    rscore.max AS result_score_max,
    rscore.min AS result_score_min,
    rscore.raw AS result_score_raw,
    rscore.scaled AS result_score_scaled,
    re."https://mauthor.com/__ions/result/page-name" AS result_extensions_page_name,
    re."https://mauthor.com/__ns/result/page-number" AS result_extensions_page_number,
    re."https://mauthor.com/__s/result/checks-count" AS result_extensions_checks_count,
    re."https://mauthor.com/__s/result/errors-count" AS result_extensions_errors_count,
    re."https://mauthor.com/__/result/mistake-count" AS result_extensions_mistake_count,
    ts.instant AS timestamp_instant,
    v.id AS verb_id,
    vd."en-US" AS verb_display_en_us,
    c.registration AS context_registration,
    o.id AS object_id,
    o._class AS object_class,
    od.interactiontype AS object_interactiontype,
    od.type AS object_type,
    odn."en-US" AS object_definition_name_en_us,
    odd."en-US" AS object_definition_description_en_us,
    ce."http://id.tincanapi.__/extension/attempt-id" AS context_extensions_attempt_id,
    li.statementid AS statement_id
   FROM c3po_progress.lrsstatements ls
     LEFT JOIN c3po_progress.lrsstatements__id li ON ls._airbyte_ab_id::text = li._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_actor a ON ls._airbyte_ab_id::text = a._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_actor_account ac ON ls._airbyte_ab_id::text = ac._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_authority auth ON ls._airbyte_ab_id::text = auth._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_result rs ON ls._airbyte_ab_id::text = rs._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_result_score rscore ON ls._airbyte_ab_id::text = rscore._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_result_extensions re ON ls._airbyte_ab_id::text = re._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_timestamp ts ON ls._airbyte_ab_id::text = ts._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_verb v ON ls._airbyte_ab_id::text = v._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_verb_display vd ON ls._airbyte_ab_id::text = vd._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_context c ON ls._airbyte_ab_id::text = c._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_context_contextactivities cca ON ls._airbyte_ab_id::text = cca._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_context_extensions ce ON ls._airbyte_ab_id::text = ce._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_object o ON ls._airbyte_ab_id::text = o._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_object_definition od ON ls._airbyte_ab_id::text = od._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_object_definition_name odn ON ls._airbyte_ab_id::text = odn._airbyte_ab_id::text
     LEFT JOIN c3po_progress.lrsstatements_object_definition_description odd ON ls._airbyte_ab_id::text = odd._airbyte_ab_id::text
  WHERE ls._airbyte_ab_id IS NOT NULL;
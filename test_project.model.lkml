connection: "text_connection"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: test_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_project_default_datagroup

explore: ancillary_001_chronic_claims {}

explore: primary_audit {}

explore: relationship {}

explore: script {
  join: users {
    type: left_outer
    sql_on: ${script.user_id} = ${users.user_id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: vw_cda001 {}

explore: vw_cda002 {}

explore: vw_cda003 {}

explore: vw_cda004 {}

explore: vw_cda005 {}

explore: vw_cda006 {}

explore: vw_cda007 {}

explore: vw_cda008 {}

explore: vw_cda009 {}

explore: vw_cda_results {}

explore: vw_law_firm_profile {}

explore: vw_plaintiff_count_by_address {}

explore: vw_plaintiff_count_by_address_details {}

explore: vw_plaintiff_count_by_address_pivot {}

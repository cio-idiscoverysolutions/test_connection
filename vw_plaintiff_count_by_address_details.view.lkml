view: vw_plaintiff_count_by_address_details {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address_Details ;;

  dimension: answer {
    type: string
    sql: ${TABLE}.Answer ;;
  }

  dimension: claim_type {
    type: string
    sql: ${TABLE}.ClaimType ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}.FullName ;;
  }

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.LOC_ID ;;
  }

  dimension: plaintiff_address {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
  }

  dimension: plaintiff_num {
    type: string
    sql: ${TABLE}.PlaintiffNum ;;
  }

  dimension: question_id {
    type: string
    sql: ${TABLE}.QuestionID ;;
  }

  measure: count {
    type: count
    drill_fields: [full_name]
  }
}

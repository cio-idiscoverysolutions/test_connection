view: vw_cda003 {
  sql_table_name: dbo.vw_CDA003 ;;

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.GPS_LAT ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.GPS_LONG ;;
  }

  dimension: label {
    type: string
    sql: ${TABLE}.Label ;;
  }

  dimension: loc_attribute_name {
    type: string
    sql: ${TABLE}."Loc Attribute Name" ;;
  }

  dimension: loc_attribute_numeric_value {
    type: number
    sql: ${TABLE}."Loc Attribute Numeric Value" ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.Loc_id ;;
  }

  dimension: ppl_id {
    type: number
    sql: ${TABLE}.PPL_ID ;;
  }

  measure: count {
    type: count
    drill_fields: [loc_attribute_name]
  }
}

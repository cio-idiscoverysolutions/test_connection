view: vw_plaintiff_count_by_address {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address ;;

  dimension: acute_count {
    type: number
    sql: ${TABLE}.AcuteCount ;;
  }

  dimension: chronic_count {
    type: number
    sql: ${TABLE}.ChronicCount ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
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

  dimension: loss_wages_count {
    type: number
    sql: ${TABLE}.LossWagesCount ;;
  }

  dimension: medical_monitoring_count {
    type: number
    sql: ${TABLE}.MedicalMonitoringCount ;;
  }

  dimension: plaintiff_address {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
  }

  dimension: plaintiff_count {
    type: number
    sql: ${TABLE}.PlaintiffCount ;;
  }

  dimension: property_damage_count {
    type: number
    sql: ${TABLE}.PropertyDamageCount ;;
  }

  dimension: property_value_count {
    type: number
    sql: ${TABLE}.PropertyValueCount ;;
  }

  dimension: relocation_count {
    type: number
    sql: ${TABLE}.RelocationCount ;;
  }

  dimension: wrongful_death_count {
    type: number
    sql: ${TABLE}.WrongfulDeathCount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

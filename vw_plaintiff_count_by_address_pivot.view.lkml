view: vw_plaintiff_count_by_address_pivot {
  sql_table_name: dbo.vw_Plaintiff_Count_by_Address_Pivot ;;

  dimension: acute_claim {
    type: string
    sql: ${TABLE}.AcuteClaim ;;
  }

  dimension: chronic_claim {
    type: string
    sql: ${TABLE}.ChronicClaim ;;
  }

  dimension: chronic_claim_description {
    type: string
    sql: ${TABLE}.ChronicClaimDescription ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}.fullname ;;
  }

  dimension: gps_lat {
    type: number
    sql: ${TABLE}.gps_lat ;;
  }

  dimension: gps_long {
    type: number
    sql: ${TABLE}.gps_long ;;
  }

  dimension: loc_id {
    type: number
    sql: ${TABLE}.loc_id ;;
  }

  dimension: lossof_wages_claim {
    type: string
    sql: ${TABLE}.LossofWagesClaim ;;
  }

  dimension: medical_monitoring_claim {
    type: string
    sql: ${TABLE}.MedicalMonitoringClaim ;;
  }

  dimension: plaintiff_address {
    type: string
    sql: ${TABLE}.PlaintiffAddress ;;
  }

  dimension: plaintiffnum {
    type: string
    sql: ${TABLE}.plaintiffnum ;;
  }

  dimension: property_damage_claim {
    type: string
    sql: ${TABLE}.PropertyDamageClaim ;;
  }

  dimension: property_value_claim {
    type: string
    sql: ${TABLE}.PropertyValueClaim ;;
  }

  dimension: relocation_claim {
    type: string
    sql: ${TABLE}.RelocationClaim ;;
  }

  dimension: wrongful_death_claim {
    type: string
    sql: ${TABLE}.WrongfulDeathClaim ;;
  }

  measure: count {
    type: count
    drill_fields: [fullname]
  }
}

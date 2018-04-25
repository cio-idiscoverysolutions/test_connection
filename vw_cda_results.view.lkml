view: vw_cda_results {
  sql_table_name: dbo.vw_CDA_results ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: count_distinct_events {
    type: number
    sql: ${TABLE}.count_distinct_events ;;
  }

  dimension: count_distinct_locations {
    type: number
    sql: ${TABLE}.count_distinct_locations ;;
  }

  dimension: count_distinct_plaintiffs {
    type: number
    sql: ${TABLE}.count_distinct_plaintiffs ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

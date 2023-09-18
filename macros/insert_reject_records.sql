{% macro insert_reject_records(null_check_query) %}

 

{% set insert_query %}

 

    insert into DBT_NUPADHYAY.REJECTED_RECORDS (

 

    {{ null_check_query }}

 

    )

 

{% endset %}

 

{% if execute %}

 

    {% set result_val = run_query(insert_query) %}      

 

{% endif %}

 

{% endmacro %}
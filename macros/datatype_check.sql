-- macros/datatype_check.sql

{% test datatype_check(model, column_name) %}

    {{ config(
        
        severity = 'warn' 
    ) }}

    select
        '{{ model }}' as model,
        '{{ column_name }}' as column_name,
        case
            when data_type = 'string' then 'PASS'
            else 'FAIL'
        end as status
    from information_schema.columns
    where column_name = '{{ column_name }}'

{% endtest %}

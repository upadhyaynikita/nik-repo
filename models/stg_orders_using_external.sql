select
    order_id,
    customer_id,
    order_date,
    status,
    ETL_LOADED_AT
from {{ source('External_table_source', 'external_order_partion') }}
where order_id is not NULL
or customer_id is not NULL
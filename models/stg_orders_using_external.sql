select
    id as order_id,
    user_id as customer_id,
    order_date,
    status,
    _etl_loaded_at as ETL_LOADED_AT
from {{ source('External_table_source', 'orders') }}
where id is not NULL
or user_id is not NULL
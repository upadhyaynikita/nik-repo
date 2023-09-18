select
    id as customer_id,
    first_name,
    last_name
from {{ source('External_table_source', 'customers') }}
where id is not NULL
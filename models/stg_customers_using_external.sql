select
    customer_id,
    first_name,
    last_name
from {{ source('External_table_source', 'external_customer_with_partition') }}
where customer_id is not NULL
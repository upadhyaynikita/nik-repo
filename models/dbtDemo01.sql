--select * from raw.demo.sales

select * from {{ source('src_demo_sales', 'sales') }}
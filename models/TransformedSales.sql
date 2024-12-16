{{ config(materialized="table") }}

select
    txn_number,
    txn_date,
    substring(custmr_name, 1, charindex(' ', custmr_name) - 1) as custmr_first_name,
    substring(
        custmr_name,
        charindex(' ', custmr_name) + 1,
        len(custmr_name) - charindex(' ', custmr_name)
    ) as custmr_last_name,  -- split cstmr name
    custmr_addrs,
    tx_srrgt_key,
    txn_amt,
    total_tax,
    net_amnt,
    (total_tax / net_amnt) * 100 as vat_amt,  -- (total tax/ net amt)*100
    current_date as prcss_dt
from {{ source("src_demo_sales", "sales") }}

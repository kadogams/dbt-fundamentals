select *

from {{ source('bitcoin', 'transactions_2022-05_sample') }}

where rand() < 0.1
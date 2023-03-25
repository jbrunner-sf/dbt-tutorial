select *
    , 'customer' as record_source
    , CURRENT_TIMESTAMP() as ldts
from `RAW.customers`
{%- set yaml_metadata -%}
hashkey: 'hk_customer_h'
business_keys: 
    - customer_id
source_models:
    stage_customer:
        rsrc_static: '*/SAP/customer/*'
{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{%- set hashkey = metadata_dict['hashkey'] -%}
{%- set business_keys = metadata_dict['business_keys'] -%}
{%- set source_models = metadata_dict['source_models'] -%}

{{ datavault4dbt.hub(hashkey=hashkey,
                     business_keys=business_keys,
                     source_models=source_models) }}
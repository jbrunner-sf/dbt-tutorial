{%- set yaml_metadata -%}
source_model: 'stage_customer_v'
ldts: 'ldts'
rsrc: 'record_source'
hashed_columns: 
    hk_customer_h:
        - customer_id
    hd_customer_s:
        is_hashdiff: true
        columns:
            - company_name
            - contact_name
            - contact_title
            - address
            - city
            - region
            - postal_code
            - country
            - phone
            - fax

{%- endset -%}

{%- set metadata_dict = fromyaml(yaml_metadata) -%}

{%- set source_model = metadata_dict['source_model'] -%}
{%- set ldts = metadata_dict['ldts'] -%}
{%- set rsrc = metadata_dict['rsrc'] -%}
{%- set hashed_columns = metadata_dict['hashed_columns'] -%}
{%- set derived_columns = metadata_dict['derived_columns'] -%}
{%- set prejoined_columns = metadata_dict['prejoined_columns'] -%}
{%- set missing_columns = metadata_dict['missing_columns'] -%}

{{ datavault4dbt.stage(source_model=source_model,
                       ldts=ldts,
                       rsrc=rsrc,
                       hashed_columns=hashed_columns,
                       derived_columns=derived_columns,
                       prejoined_columns=prejoined_columns,
                       missing_columns=missing_columns) }}
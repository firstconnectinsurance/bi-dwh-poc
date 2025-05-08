{% snapshot scd_src_appetite_finder_sessions %}
{{
 config(
 target_schema='DEV',
 unique_key='id',
 strategy='timestamp',
 updated_at='updated_at',
 invalidate_hard_deletes=True
 )
}}
select * FROM {{ source('hevo', 'src_appetite_finder_sessions') }}
{% endsnapshot %}
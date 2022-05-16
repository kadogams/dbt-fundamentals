{% snapshot bitcoin_transactions_snapshot %}

{{
    config(
      target_project = 'silicon-light-344109',
      target_dataset = 'snapshots',
      unique_key = '`hash`',
      strategy = 'timestamp',
      updated_at = 'block_timestamp',
      invalidate_hard_deletes = True,
    )
}}

select * from  {{ ref('stg_bitcoin_transactions') }}

{% endsnapshot %}
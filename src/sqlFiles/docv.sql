select syscountyname, district_full_name, state, id as deposit_id from billy.depvalld
where deposit_date = '(REPLACE DATE)'
and state in ('(REPLACE STATE)');
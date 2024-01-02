SELECT
    id
    , first_name
    , last_name
    , birthdate
FROM
    {{ ref('customers') }}
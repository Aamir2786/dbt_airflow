SELECT
    A.id
    , first_name
    , last_name
    , birthdate
    , booking_reference
    , hotel
    , booking_date
    , cost
FROM
    {{ref('customer')}}  A
    JOIN {{ref('combined_bookings')}} B
    ON A.id = B.id
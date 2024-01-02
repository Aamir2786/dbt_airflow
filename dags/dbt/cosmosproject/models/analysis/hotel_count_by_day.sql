SELECT
  booking_date,
  hotel,
  COUNT(id) as count_bookings
FROM
    {{ ref('prepped_data') }}
GROUP BY
  booking_date,
  hotel

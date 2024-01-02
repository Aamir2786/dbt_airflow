SELECT
  booking_date,
  hotel,
  cost,
  avg(cost) over (
    ORDER BY booking_date ROWS BETWEEN 29 preceding AND CURRENT ROW
  ) as "30_DAY_AVG_COST",
  cost -   AVG(cost) OVER (
    ORDER BY booking_date ROWS BETWEEN 29 preceding AND CURRENT ROW
  ) as "DIFF_BTW_ACTUAL_AVG"
FROM
    {{ ref('prepped_data') }}
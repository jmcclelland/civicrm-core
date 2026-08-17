{* file to handle db changes in 6.19.alpha1 during upgrade *}
{* We are changing the case start_date from a date to a datetime field. This query uses the time from any *}
{* open case activities to back fill the time for previously created cases, but only if the date matches. *}
UPDATE
  civicrm_case c JOIN civicrm_case_activity ca ON c.id = ca.case_id JOIN civicrm_activity a ON ca.activity_id = a.id
SET
  c.start_date = a.activity_date_time
WHERE
  DATE(a.activity_date_time) = DATE(c.start_date);

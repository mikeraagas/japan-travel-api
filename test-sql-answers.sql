---------------------------------
----------- TEST 1 --------------
---------------------------------

SELECT
  CONCAT(
    'T',
    LPAD(trn_teacher.id, 11, 0)
  ) AS ID,
  trn_teacher.nickname AS Nickname,
  CASE trn_teacher.status
    WHEN 0 THEN 'Discontinued'
    WHEN 1 THEN 'Active'
    WHEN 2 THEN 'Deactivated'
    ELSE ''
  END AS Status,
  GROUP_CONCAT(
    DISTINCT (
      CASE trn_teacher_role.role
        WHEN 1 THEN 'Trainer'
        WHEN 2 THEN 'Assessor'
        WHEN 3 THEN 'Staff'
        ELSE ''
      END
    )
    SEPARATOR
    '/'
  ) as Roles
FROM trn_teacher
INNER JOIN trn_teacher_role
ON trn_teacher.id = trn_teacher_role.teacher_id
GROUP BY trn_teacher.id;

---------------------------------
----------- TEST 2 --------------
---------------------------------

SELECT
  trn_teacher.id AS ID,
  trn_teacher.nickname AS Nickname,
  COUNT(IF(trn_time_table.status = 1, trn_time_table.status, NULL)) AS Open,
  COUNT(IF(trn_time_table.status = 3, trn_time_table.status, NULL)) AS Reserved,
  COUNT(IF(trn_evaluation.result = 1, trn_evaluation.result, NULL)) AS Taught,
  COUNT(IF(trn_evaluation.result = 2, trn_evaluation.result, NULL)) AS `No Show`
FROM trn_teacher
INNER JOIN trn_teacher_role
ON trn_teacher.id = trn_teacher_role.teacher_id
INNER JOIN trn_time_table
ON trn_teacher.id = trn_time_table.teacher_id
INNER JOIN trn_evaluation
ON trn_teacher.id = trn_evaluation.teacher_id
WHERE
  trn_teacher.status IN (1, 2) AND
  trn_teacher_role.role IN (1, 2)
GROUP BY trn_teacher.id;


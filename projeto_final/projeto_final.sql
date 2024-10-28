-- What is the average time spent on tasks by each user?
SELECT
  user_id,
  AVG(duration) AS average_time_spent
FROM
  `projeto_final.dw_hours`
GROUP BY
  user_id;

-- gere insight de horas por projeto
SELECT
    project.name,
    sum(hours.duration) AS total_hours
  FROM
    `soulcode-434516.projeto_final.hours` AS hours
    INNER JOIN `soulcode-434516.projeto_final.task` AS task ON hours.task_log_id = task.task_id
    INNER JOIN `soulcode-434516.projeto_final.project` AS project ON task.project_id = project.project_id
  GROUP BY 1;


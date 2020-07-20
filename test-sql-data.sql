trn_teacher_role
insert into trn_teacher (id, nickname, status) values (110250, 'John D', 1);
insert into trn_teacher (id, nickname, status) values (110023, 'Mike', 0);
insert into trn_teacher (id, nickname, status) values (110011, 'Luca', 1);
insert into trn_teacher (id, nickname, status) values (110033, 'Scottie', 2);
insert into trn_teacher (id, nickname, status) values (110030, 'Steph C', 1);

trn_teacher_role
insert into trn_teacher_role (teacher_id, role) values (110250, 1);
insert into trn_teacher_role (teacher_id, role) values (110250, 2);
insert into trn_teacher_role (teacher_id, role) values (110250, 3);
insert into trn_teacher_role (teacher_id, role) values (110011, 1);
insert into trn_teacher_role (teacher_id, role) values (110030, 1);
insert into trn_teacher_role (teacher_id, role) values (110030, 2);
insert into trn_teacher_role (teacher_id, role) values (110023, 1);
insert into trn_teacher_role (teacher_id, role) values (110033, 3);

trn_time_table
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110250, '2020-01-11 17:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110250, '2020-01-11 16:30:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110250, '2020-01-10 16:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110011, '2020-01-10 17:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110011, '2020-01-10 21:00:00', 2);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110011, '2020-01-10 23:00:00', 3);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110030, '2020-01-10 21:30:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110030, '2020-01-10 20:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110030, '2020-01-10 19:30:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110023, '2020-01-07 17:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110023, '2020-01-06 17:00:00', 1);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110023, '2020-01-08 19:30:00', 2);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110033, '2020-01-07 15:30:00', 2);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110033, '2020-01-06 16:30:00', 2);
insert into trn_time_table (teacher_id, lesson_datetime, status) values (110033, '2020-01-07 10:30:00', 2);

trn_evaluation
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110250, 1, '2020-01-11 17:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110250, 1, '2020-01-11 16:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110250, 1, '2020-01-10 16:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110011, 1, '2020-01-10 17:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110011, 2, '2020-01-10 21:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110011, 1, '2020-01-10 23:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110030, 1, '2020-01-10 21:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110030, 1, '2020-01-10 20:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110030, 1, '2020-01-10 19:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110023, 1, '2020-01-07 17:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110023, 1, '2020-01-06 17:00:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110023, 2, '2020-01-08 16:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110033, 1, '2020-01-07 15:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110033, 2, '2020-01-06 16:30:00');
insert into trn_evaluation (teacher_id, result, lesson_datetime) values (110033, 1, '2020-01-07 10:30:00');


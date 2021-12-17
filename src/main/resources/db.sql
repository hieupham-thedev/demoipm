
-- USER_APP --
INSERT INTO user_app (email, full_name, phone, role, username) 
VALUES ('a103nguyen@gmail.com' ,'Nguyen Van A', '0123456789', 'ROLE_ADMIN', 'a103nguyen');

INSERT INTO user_app (email, full_name, phone, role, username) 
VALUES ('b103nguyen@gmail.com' ,'Nguyen Van B', '0123456789', 'ROLE_HR', 'b103nguyen');

INSERT INTO user_app (email, full_name, phone, role, username) 
VALUES ('c103nguyen@gmail.com' ,'Nguyen Van C', '0123456789', 'ROLE_INTERVIEWER', 'c103nguyen');

-- SKILL --
INSERT INTO skill (name, description) 
VALUES ('Java', 'Ngon ngu duoc su dung de phat trien web backend');

INSERT INTO skill (name, description) 
VALUES ('C', 'Ngon ngu duoc su dung de phat trien Embedded system');

INSERT INTO skill (name, description) 
VALUES ('Python', 'Ngon ngu duoc su dung de lam Big data');

-- CAREER --
INSERT INTO career (name, description) 
VALUES ('Cong nghe thong tin', 'Mot nghanh nghe nang dong, giúp phát trien dat nuoc');

INSERT INTO career (name, description) 
VALUES ('Nhan su', 'Mot nghanh nghe tim kiem cac tai nang, giup phat trien cong ty');

INSERT INTO career (name, description) 
VALUES ('Tai chinh', 'Mot nghanh nghe giup can bang thu chi, giup cong ty co loi nhuan');

-- JOB --
INSERT INTO job (name, career_id) 
VALUES ('Ky su phat trien web', 1);

INSERT INTO job (name, career_id) 
VALUES ('Ky su lap trinh nhung', 1);

INSERT INTO job (name, career_id) 
VALUES ('Ky su data', 1);

-- JOB_SKILL --
INSERT INTO job_skill (job_id, skill_id) 
VALUES (1, 1);

INSERT INTO job_skill (job_id, skill_id) 
VALUES (2, 2);

INSERT INTO job_skill (job_id, skill_id) 
VALUES (3, 3);

-- RECRUITMENT --
INSERT INTO recruitment (max_salary, min_salary, number, start_recruitment, end_recruitment, career_id, job_id) 
VALUES (1000, 500, 20, '2021/12/16', '2021/12/26', 1, 1);

INSERT INTO recruitment (max_salary, min_salary, number, start_recruitment, end_recruitment, career_id, job_id) 
VALUES (1000, 500, 20, '2021/12/16', '2021/12/26', 2, 2);

INSERT INTO recruitment (max_salary, min_salary, number, start_recruitment, end_recruitment, career_id, job_id) 
VALUES (1000, 500, 20, '2021/12/16', '2021/12/26', 3, 3);

-- RECRUITMENT_SKILL --
INSERT INTO recruitment_skill (recruitment_id, skill_id) 
VALUES (1, 1);

INSERT INTO recruitment_skill (recruitment_id, skill_id) 
VALUES (2, 2);

INSERT INTO recruitment_skill (recruitment_id, skill_id) 
VALUES (3, 3);

-- CANDIDATE --
INSERT INTO candidate (full_name, phone, email, sex, birth_day)
VALUES ('Vo Van A', '0123456789', 'avo@gmail.com', 'nam', '1996/3/10');

INSERT INTO candidate (full_name, phone, email, sex, birth_day) 
VALUES ('Vo Van B', '0123456789', 'bvo@gmail.com', 'nam', '1996/3/10');

INSERT INTO candidate (full_name, phone, email, sex, birth_day) 
VALUES ('Vo Van C', '0123456789', 'cvo@gmail.com', 'nam', '1996/3/10');

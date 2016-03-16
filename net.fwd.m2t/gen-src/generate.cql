CREATE TABLE account (
  email text,
  reg_time timestamp,
  User_pk frozen <tuple <text, text>>,
  level int,
  passwd text,
  PRIMARY KEY (email)
);

CREATE INDEX ON account (level);

CREATE INDEX ON account (passwd);

CREATE TABLE user (
  u_name text,
  cellphone text,
  home_add text,
  gpa float,
  industry int,
  birthday timestamp,
  nature int,
  scale int,
  fax text,
  postcode text,
  id_card text,
  company text,
  address text,
  briefintro text,
  gender boolean,
  enrol_time timestamp,
  pri_email text,
  department text,
  pri_phone text,
  marital_sta int,
  website text,
  PRIMARY KEY (u_name, cellphone)
);

CREATE TABLE jobinfo (
  posttime timeuuid,
  function text,
  duty text,
  req_num int,
  requirement text,
  name text,
  intro text,
  detail text,
  Employer_pk frozen <tuple <text, text>>,
  PRIMARY KEY (posttime)
);

CREATE TABLE application (
  app_time timeuuid,
  agreed boolean,
  status int,
  agr_time timestamp,
  Applicant_pk frozen <tuple <text, text>>,
  re_Job_pk frozen <tuple <bigint, timeuuid>>,
  re_Employer_pk frozen <tuple <text, text>>,
  Employer_company text,
  PRIMARY KEY (app_time)
);

CREATE TABLE invitation (
  inv_time timeuuid,
  text text,
  Employer_pk frozen <tuple <text, text>>,
  Student_pk frozen <tuple <text, text>>,
  Employer_company text,
  PRIMARY KEY (inv_time)
);

CREATE TABLE notice (
  posttime timeuuid,
  text text,
  uri text,
  title text,
  PRIMARY KEY (posttime)
);

CREATE TABLE jobinfo_views_counter (
  posttime timeuuid,
  views counter,
  PRIMARY KEY (posttime)
);

CREATE TABLE publish_user_jobinfo (
  u_name text,
  cellphone text,
  posttime timeuuid,
  Job_function text,
  Job_duty text,
  Job_req_num int,
  Job_name text,
  PRIMARY KEY (u_name, cellphone, posttime)
);

CREATE TABLE _user_application (
  u_name text,
  cellphone text,
  app_time timeuuid,
  PRIMARY KEY (u_name, cellphone, app_time)
);

CREATE TABLE count_jobinfo_application (
  posttime timeuuid,
  app_time timeuuid,
  PRIMARY KEY (posttime, app_time)
);

CREATE TABLE _user_invitation (
  u_name text,
  cellphone text,
  inv_time timeuuid,
  PRIMARY KEY (u_name, cellphone, inv_time)
);

CREATE TABLE invite_user_invitation (
  u_name text,
  cellphone text,
  inv_time timeuuid,
  PRIMARY KEY (u_name, cellphone, inv_time)
);

CREATE TABLE postedby_notice_user (
  posttime timeuuid,
  cellphone text,
  u_name text,
  PRIMARY KEY (posttime, cellphone, u_name)
);


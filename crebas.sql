/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018.03.03 PM 11:27:40                       */
/*==============================================================*/


drop table if exists admin;

drop table if exists area;

drop table if exists building;

drop table if exists cachet;

drop table if exists carport;

drop table if exists "check";

drop table if exists cost_item;

drop table if exists floor;

drop table if exists instrument_initial_value;

drop table if exists login;

drop table if exists management;

drop table if exists over_fine;

drop table if exists owner;

drop table if exists property_fee;

drop table if exists r_picture;

drop table if exists rental;

drop table if exists room;

drop table if exists salary;

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   ad_id                char(3) not null,
   ad_name              varchar(20) not null,
   ad_telphone          char(11) not null,
   ad_idcard            char(18),
   ad_type              varchar(10) not null,
   primary key (ad_id)
);

alter table admin comment '管理员基本信息';

/*==============================================================*/
/* Table: area                                                  */
/*==============================================================*/
create table area
(
   a_name               varchar(50) not null,
   a_address            varchar(100) not null,
   a_floor_space        varchar(30) not null,
   a_usable_area        varchar(30) not null,
   a_residual_area      varchar(30) not null,
   a_unit               char(6) not null,
   a_surroundings       varchar(100),
   primary key (a_name)
);

alter table area comment '小区基本信息';

/*==============================================================*/
/* Table: building                                              */
/*==============================================================*/
create table building
(
   b_id                 int not null auto_increment,
   b_floor_space        varchar(30) not null,
   b_numberOffloors     varchar(3) not null,
   primary key (b_id)
);

alter table building comment '建筑物信息';

/*==============================================================*/
/* Table: cachet                                                */
/*==============================================================*/
create table cachet
(
   ca_id                int not null auto_increment,
   图片                   varchar(100) not null,
   primary key (ca_id)
);

alter table cachet comment '用于合同或票据上';

/*==============================================================*/
/* Table: carport                                               */
/*==============================================================*/
create table carport
(
   cp_id                int not null auto_increment,
   cp_type              varchar(20),
   cp_state             char(4),
   cp_m_type            char(8),
   cp_presell_price     varchar(10),
   cp_rental            varchar(10),
   cp_location          varchar(50),
   cp_area              varchar(10),
   primary key (cp_id)
);

alter table carport comment '车位基本信息';

/*==============================================================*/
/* Table: "check"                                               */
/*==============================================================*/
create table "check"
(
   c_id                 int not null auto_increment,
   o_id                 int,
   r_id                 varchar(4),
   f_id                 int,
   b_id                 int,
   c_check_in_time      timestamp not null,
   c_evacuation_date    timestamp not null,
   c_occupation_permit  varchar(10) not null,
   primary key (c_id)
);

alter table "check" comment '业主入住产生房产信息';

/*==============================================================*/
/* Table: cost_item                                             */
/*==============================================================*/
create table cost_item
(
   ci_id                char(3) not null,
   ci_name              varchar(20),
   ci_price             varchar(10),
   ci_type              varchar(10),
   ci_etc               varchar(10),
   ci_cycle             int,
   primary key (ci_id)
);

alter table cost_item comment '收费项目设置及收费标准制定';

/*==============================================================*/
/* Table: floor                                                 */
/*==============================================================*/
create table floor
(
   b_id                 int not null,
   f_id                 int not null auto_increment,
   f_numberOfroom       varchar(4) not null,
   primary key (f_id, b_id)
);

alter table floor comment '楼层分布情况';

/*==============================================================*/
/* Table: instrument_initial_value                              */
/*==============================================================*/
create table instrument_initial_value
(
   i_id                 int not null auto_increment,
   r_id                 varchar(4),
   f_id                 int,
   b_id                 int,
   ci_id                char(3),
   i_water_meter        varchar(10),
   i_electricity_meter  varchar(10),
   primary key (i_id)
);

alter table instrument_initial_value comment '房户入住前仪表信息初始化';

/*==============================================================*/
/* Table: login                                                 */
/*==============================================================*/
create table login
(
   l_id                 int not null auto_increment,
   ad_id                char(3),
   l_username           varchar(10) not null,
   l_password           varchar(16) not null,
   primary key (l_id)
);

alter table login comment '便于不同管理员管理系统';

/*==============================================================*/
/* Table: management                                            */
/*==============================================================*/
create table management
(
   m_id                 int not null auto_increment,
   f_id                 int,
   b_id                 int,
   ad_id                char(3),
   primary key (m_id)
);

alter table management comment '楼宇管理分配';

/*==============================================================*/
/* Table: over_fine                                             */
/*==============================================================*/
create table over_fine
(
   of_over_fine         varchar(10) not null,
   primary key (of_over_fine)
);

alter table over_fine comment '业主超期未缴费所收取滞纳金比例';

/*==============================================================*/
/* Table: owner                                                 */
/*==============================================================*/
create table owner
(
   o_id                 int not null auto_increment,
   o_name               varchar(20) not null,
   o_birthday           date,
   o_native_place       varchar(20),
   o_sex                char(2),
   o_nationality        varchar(50),
   o_address            varchar(50),
   o_work_unit          varchar(50),
   o_duty               varchar(30),
   o_education          varchar(20),
   o_nation             varchar(30),
   o_telphone           char(11) not null,
   o_idcard             char(18) not null,
   o_bank_account       varchar(22),
   o_bank               varchar(50),
   o_postal_code        char(6),
   o_police_station     varchar(50),
   o_emergency_contact  varchar(50),
   o_e_c_telphone       char(11),
   o_e_c_address        varchar(50),
   primary key (o_id)
);

alter table owner comment '业主个人信息';

/*==============================================================*/
/* Table: property_fee                                          */
/*==============================================================*/
create table property_fee
(
   pf_id                int not null auto_increment,
   c_id                 int,
   of_over_fine         varchar(10),
   ci_id                char(3),
   pf_last_time_reading varchar(10),
   pf_reading           varchar(10),
   pf_actual_dosage     varchar(10),
   pf_total_fees        varchar(10),
   pf_extended          int,
   pf_overdue_fine      varchar(5),
   pf_due               varchar(10),
   pf_remission         varchar(5),
   pf_inception         date,
   pf_fee_deadline      date,
   pf_deadline          date,
   pf_recorder          varchar(6),
   pf_state             varchar(10),
   pf_comment           longtext,
   primary key (pf_id)
);

alter table property_fee comment '业主消费情况';

/*==============================================================*/
/* Table: r_picture                                             */
/*==============================================================*/
create table r_picture
(
   p_id                 int not null auto_increment,
   r_id                 varchar(4) not null,
   f_id                 int not null,
   b_id                 int not null,
   p_picture            varchar(100) not null,
   primary key (p_id, r_id, f_id, b_id)
);

alter table r_picture comment '房间的室内环境图';

/*==============================================================*/
/* Table: rental                                                */
/*==============================================================*/
create table rental
(
   rt_id                int not null auto_increment,
   cp_id                int,
   o_id                 int,
   rt_state             char(4) not null,
   rt_rental_time       timestamp not null,
   rt_deadline          timestamp,
   primary key (rt_id)
);

alter table rental comment '车位的购买或出租信息';

/*==============================================================*/
/* Table: room                                                  */
/*==============================================================*/
create table room
(
   b_id                 int not null,
   f_id                 int not null,
   r_id                 varchar(4) not null,
   r_area               varchar(30),
   r_type               varchar(10),
   r_house_type         varchar(10),
   r_property_type      varchar(10),
   r_finish             varchar(10),
   r_orientatin         varchar(10),
   r_down_payment       varchar(20),
   r_monthly_installment varchar(20),
   r_state              char(4),
   r_length             varchar(10),
   r_width              varchar(10),
   r_univalence         varchar(20),
   r_total_value        varchar(20),
   r_comment            longtext,
   primary key (r_id, f_id, b_id)
);

alter table room comment '单个房屋基本信息';

/*==============================================================*/
/* Table: salary                                                */
/*==============================================================*/
create table salary
(
   s_id                 int not null auto_increment,
   ad_id                char(3),
   s_m_salary           varchar(6),
   s_sick_leave         varchar(3),
   s_sick_count         int,
   s_personal_leave     varchar(3),
   s_personal_count     int,
   "s_gross-pay"        varchar(6),
   s_comment            longtext,
   primary key (s_id)
);

alter table salary comment '管理员工资信息';

alter table "check" add constraint FK_o_c_r foreign key (o_id)
      references owner (o_id) on delete restrict on update restrict;

alter table "check" add constraint FK_r_c_r foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id) on delete restrict on update restrict;

alter table floor add constraint FK_b_f_r foreign key (b_id)
      references building (b_id) on delete restrict on update restrict;

alter table instrument_initial_value add constraint FK_ci_i_r foreign key (ci_id)
      references cost_item (ci_id) on delete restrict on update restrict;

alter table instrument_initial_value add constraint FK_r_i_r foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id) on delete restrict on update restrict;

alter table login add constraint FK_ad_l_r foreign key (ad_id)
      references admin (ad_id) on delete restrict on update restrict;

alter table management add constraint FK_ad_m_r foreign key (ad_id)
      references admin (ad_id) on delete restrict on update restrict;

alter table management add constraint FK_f_m_r foreign key (f_id, b_id)
      references floor (f_id, b_id) on delete restrict on update restrict;

alter table property_fee add constraint FK_c_pf_r foreign key (c_id)
      references "check" (c_id) on delete restrict on update restrict;

alter table property_fee add constraint FK_ci_pf_r foreign key (ci_id)
      references cost_item (ci_id) on delete restrict on update restrict;

alter table property_fee add constraint FK_of_pf_r foreign key (of_over_fine)
      references over_fine (of_over_fine) on delete restrict on update restrict;

alter table r_picture add constraint FK_r_p_r foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id) on delete restrict on update restrict;

alter table rental add constraint FK_cp_r_r foreign key (cp_id)
      references carport (cp_id) on delete restrict on update restrict;

alter table rental add constraint FK_o_r_r foreign key (o_id)
      references owner (o_id) on delete restrict on update restrict;

alter table room add constraint FK_f_r_r foreign key (f_id, b_id)
      references floor (f_id, b_id) on delete restrict on update restrict;

alter table salary add constraint FK_ad_s_r foreign key (ad_id)
      references admin (ad_id) on delete restrict on update restrict;


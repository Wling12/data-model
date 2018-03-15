/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018.03.15 AM 10:38:23                       */
/*==============================================================*/


drop table if exists ConLog;

drop table if exists Enterprise;

drop table if exists admin;

drop table if exists area;

drop table if exists building;

drop table if exists cachet;

drop table if exists carport;

drop table if exists "check";

drop table if exists cost_item;

drop table if exists floor;

drop table if exists instrument_initial_value;

drop table if exists management;

drop table if exists over_fine;

drop table if exists owner;

drop table if exists property_fee;

drop table if exists r_picture;

drop table if exists rental;

drop table if exists role_management;

drop table if exists room;

drop table if exists salary;

drop table if exists system_log;

/*==============================================================*/
/* Table: ConLog                                                */
/*==============================================================*/
create table ConLog
(
   cl_id                numeric(8,0) not null auto_increment,
   ad_id                char(3),
   cl_date              datetime not null,
   primary key (cl_id)
);

alter table ConLog comment '记录登录系统角色及登录日期';

/*==============================================================*/
/* Table: Enterprise                                            */
/*==============================================================*/
create table Enterprise
(
   E_name               varchar(50) not null,
   E_Administrative_license varchar(30) not null,
   E_type               varchar(30),
   E_address            varchar(100) not null,
   E_picture            varchar(100),
   E_description        text not null,
   E_telephone          varchar(20),
   E_Detailed_address   varchar(100) not null,
   E_start_stop_state   varchar(10) not null default '启用'
);

alter table Enterprise comment '物业公司的基本信息。';

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   ad_id                char(3) not null,
   rm_id                int,
   ad_name              varchar(20) not null,
   ad_telphone          char(11) not null,
   ad_idcard            char(18) not null,
   ad_password          varchar(16) not null,
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
   ca_picture           varchar(100) not null,
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
   c_check_in_time      date not null,
   c_evacuation_date    date not null,
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
   ci_cycle             int default 1,
   primary key (ci_id)
);

alter table cost_item comment '收费项目设置及收费标准制定';

/*==============================================================*/
/* Table: floor                                                 */
/*==============================================================*/
create table floor
(
   b_id                 int not null,
   f_id                 int not null,
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
   i_meter              varchar(10),
   primary key (i_id)
);

alter table instrument_initial_value comment '房户入住前仪表信息初始化';

/*==============================================================*/
/* Table: management                                            */
/*==============================================================*/
create table management
(
   m_id                 int not null auto_increment,
   ad_id                char(3),
   b_id                 int,
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
   o_birthday           datetime,
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
   o_password           varchar(16) not null,
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
   pf_remission         varchar(5),
   pf_due               varchar(10),
   pf_inception         datetime,
   pf_fee_deadline      datetime,
   pf_deadline          datetime,
   pf_recorder          varchar(6),
   pf_state             varchar(10),
   pf_comment           text,
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
   rt_rental_time       date not null,
   rt_deadline          date not null,
   rt_pirice            varchar(10) not null,
   primary key (rt_id)
);

alter table rental comment '车位的购买或出租信息';

/*==============================================================*/
/* Table: role_management                                       */
/*==============================================================*/
create table role_management
(
   rm_id                int not null auto_increment,
   rm_name              varchar(30) not null,
   rm_description       varchar(100),
   "rm_Rev.Stop_state"  varchar(10) not null default '启用',
   rm_salary            varchar(10) not null,
   rm_level             char(1) not null,
   primary key (rm_id)
);

alter table role_management comment '不用用户具有不同的权限。';

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
   r_comment            text,
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
   s_comment            text,
   primary key (s_id)
);

alter table salary comment '管理员工资信息';

/*==============================================================*/
/* Table: system_log                                            */
/*==============================================================*/
create table system_log
(
   sl_id                int not null auto_increment,
   ad_id                char(3),
   sl_type              varchar(10),
   sl_level             char(1),
   sl_title             varchar(50),
   sl_content           text,
   sl_date              datetime,
   primary key (sl_id)
);

alter table system_log comment '操作日志主要记录了操作员的登录的信息、对一些主要数据进行删除和修改操作的记录';

alter table ConLog add constraint FK_Reference_18 foreign key (ad_id)
      references admin (ad_id);

alter table admin add constraint FK_Reference_17 foreign key (rm_id)
      references role_management (rm_id);

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

alter table management add constraint FK_Reference_20 foreign key (b_id)
      references building (b_id);

alter table management add constraint FK_ad_m_r foreign key (ad_id)
      references admin (ad_id) on delete restrict on update restrict;

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

alter table system_log add constraint FK_Reference_19 foreign key (ad_id)
      references admin (ad_id);


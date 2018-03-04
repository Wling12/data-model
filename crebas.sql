/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2018.03.04 AM 11:04:30                       */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"check"') and o.name = 'FK_CHECK_O_C_R_OWNER')
alter table "check"
   drop constraint FK_CHECK_O_C_R_OWNER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"check"') and o.name = 'FK_CHECK_R_C_R_ROOM')
alter table "check"
   drop constraint FK_CHECK_R_C_R_ROOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('floor') and o.name = 'FK_FLOOR_B_F_R_BUILDING')
alter table floor
   drop constraint FK_FLOOR_B_F_R_BUILDING
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('instrument_initial_value') and o.name = 'FK_INSTRUME_CI_I_R_COST_ITE')
alter table instrument_initial_value
   drop constraint FK_INSTRUME_CI_I_R_COST_ITE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('instrument_initial_value') and o.name = 'FK_INSTRUME_R_I_R_ROOM')
alter table instrument_initial_value
   drop constraint FK_INSTRUME_R_I_R_ROOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('login') and o.name = 'FK_LOGIN_AD_L_R_ADMIN')
alter table login
   drop constraint FK_LOGIN_AD_L_R_ADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('management') and o.name = 'FK_MANAGEME_AD_M_R_ADMIN')
alter table management
   drop constraint FK_MANAGEME_AD_M_R_ADMIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('management') and o.name = 'FK_MANAGEME_F_M_R_FLOOR')
alter table management
   drop constraint FK_MANAGEME_F_M_R_FLOOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('property_fee') and o.name = 'FK_PROPERTY_C_PF_R_CHECK')
alter table property_fee
   drop constraint FK_PROPERTY_C_PF_R_CHECK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('property_fee') and o.name = 'FK_PROPERTY_CI_PF_R_COST_ITE')
alter table property_fee
   drop constraint FK_PROPERTY_CI_PF_R_COST_ITE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('property_fee') and o.name = 'FK_PROPERTY_OF_PF_R_OVER_FIN')
alter table property_fee
   drop constraint FK_PROPERTY_OF_PF_R_OVER_FIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('r_picture') and o.name = 'FK_R_PICTUR_R_P_R_ROOM')
alter table r_picture
   drop constraint FK_R_PICTUR_R_P_R_ROOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('rental') and o.name = 'FK_RENTAL_CP_R_R_CARPORT')
alter table rental
   drop constraint FK_RENTAL_CP_R_R_CARPORT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('rental') and o.name = 'FK_RENTAL_O_R_R_OWNER')
alter table rental
   drop constraint FK_RENTAL_O_R_R_OWNER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('room') and o.name = 'FK_ROOM_F_R_R_FLOOR')
alter table room
   drop constraint FK_ROOM_F_R_R_FLOOR
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('salary') and o.name = 'FK_SALARY_AD_S_R_ADMIN')
alter table salary
   drop constraint FK_SALARY_AD_S_R_ADMIN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('admin')
            and   type = 'U')
   drop table admin
go

if exists (select 1
            from  sysobjects
           where  id = object_id('area')
            and   type = 'U')
   drop table area
go

if exists (select 1
            from  sysobjects
           where  id = object_id('building')
            and   type = 'U')
   drop table building
go

if exists (select 1
            from  sysobjects
           where  id = object_id('cachet')
            and   type = 'U')
   drop table cachet
go

if exists (select 1
            from  sysobjects
           where  id = object_id('carport')
            and   type = 'U')
   drop table carport
go

if exists (select 1
            from  sysobjects
           where  id = object_id('"check"')
            and   type = 'U')
   drop table "check"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('cost_item')
            and   type = 'U')
   drop table cost_item
go

if exists (select 1
            from  sysobjects
           where  id = object_id('floor')
            and   type = 'U')
   drop table floor
go

if exists (select 1
            from  sysobjects
           where  id = object_id('instrument_initial_value')
            and   type = 'U')
   drop table instrument_initial_value
go

if exists (select 1
            from  sysobjects
           where  id = object_id('login')
            and   type = 'U')
   drop table login
go

if exists (select 1
            from  sysobjects
           where  id = object_id('management')
            and   type = 'U')
   drop table management
go

if exists (select 1
            from  sysobjects
           where  id = object_id('over_fine')
            and   type = 'U')
   drop table over_fine
go

if exists (select 1
            from  sysobjects
           where  id = object_id('owner')
            and   type = 'U')
   drop table owner
go

if exists (select 1
            from  sysobjects
           where  id = object_id('property_fee')
            and   type = 'U')
   drop table property_fee
go

if exists (select 1
            from  sysobjects
           where  id = object_id('r_picture')
            and   type = 'U')
   drop table r_picture
go

if exists (select 1
            from  sysobjects
           where  id = object_id('rental')
            and   type = 'U')
   drop table rental
go

if exists (select 1
            from  sysobjects
           where  id = object_id('room')
            and   type = 'U')
   drop table room
go

if exists (select 1
            from  sysobjects
           where  id = object_id('salary')
            and   type = 'U')
   drop table salary
go

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin (
   ad_id                char(3)              not null,
   ad_name              varchar(20)          not null,
   ad_telphone          char(11)             not null,
   ad_idcard            char(18)             null,
   ad_type              varchar(10)          not null,
   constraint PK_ADMIN primary key nonclustered (ad_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('admin') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'admin' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '管理员基本信息', 
   'user', @CurrentUser, 'table', 'admin'
go

/*==============================================================*/
/* Table: area                                                  */
/*==============================================================*/
create table area (
   a_name               varchar(50)          not null,
   a_address            varchar(100)         not null,
   a_floor_space        varchar(30)          not null,
   a_usable_area        varchar(30)          not null,
   a_residual_area      varchar(30)          not null,
   a_unit               char(6)              not null,
   a_surroundings       varchar(100)         null,
   constraint PK_AREA primary key nonclustered (a_name)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('area') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'area' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '小区基本信息', 
   'user', @CurrentUser, 'table', 'area'
go

/*==============================================================*/
/* Table: building                                              */
/*==============================================================*/
create table building (
   b_id                 int                  identity,
   b_floor_space        varchar(30)          not null,
   b_numberOffloors     varchar(3)           not null,
   constraint PK_BUILDING primary key nonclustered (b_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('building') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'building' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '建筑物信息', 
   'user', @CurrentUser, 'table', 'building'
go

/*==============================================================*/
/* Table: cachet                                                */
/*==============================================================*/
create table cachet (
   ca_id                int                  identity,
   图片                   varchar(100)         not null,
   constraint PK_CACHET primary key nonclustered (ca_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('cachet') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'cachet' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '用于合同或票据上', 
   'user', @CurrentUser, 'table', 'cachet'
go

/*==============================================================*/
/* Table: carport                                               */
/*==============================================================*/
create table carport (
   cp_id                int                  identity,
   cp_type              varchar(20)          null,
   cp_state             char(4)              null,
   cp_m_type            char(8)              null,
   cp_presell_price     varchar(10)          null,
   cp_rental            varchar(10)          null,
   cp_location          varchar(50)          null,
   cp_area              varchar(10)          null,
   constraint PK_CARPORT primary key nonclustered (cp_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('carport') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'carport' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '车位基本信息', 
   'user', @CurrentUser, 'table', 'carport'
go

/*==============================================================*/
/* Table: "check"                                               */
/*==============================================================*/
create table "check" (
   c_id                 int                  identity,
   o_id                 int                  null,
   r_id                 varchar(4)           null,
   f_id                 int                  null,
   b_id                 int                  null,
   c_check_in_time      date                 not null,
   c_evacuation_date    date                 not null,
   c_occupation_permit  varchar(10)          not null,
   constraint PK_CHECK primary key nonclustered (c_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('"check"') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'check' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '业主入住产生房产信息', 
   'user', @CurrentUser, 'table', 'check'
go

/*==============================================================*/
/* Table: cost_item                                             */
/*==============================================================*/
create table cost_item (
   ci_id                char(3)              not null,
   ci_name              varchar(20)          null,
   ci_price             varchar(10)          null,
   ci_type              varchar(10)          null,
   ci_etc               varchar(10)          null,
   ci_cycle             int                  null,
   constraint PK_COST_ITEM primary key nonclustered (ci_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('cost_item') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'cost_item' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '收费项目设置及收费标准制定', 
   'user', @CurrentUser, 'table', 'cost_item'
go

/*==============================================================*/
/* Table: floor                                                 */
/*==============================================================*/
create table floor (
   b_id                 int                  not null,
   f_id                 int                  not null,
   f_numberOfroom       varchar(4)           not null,
   constraint PK_FLOOR primary key nonclustered (f_id, b_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('floor') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'floor' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '楼层分布情况', 
   'user', @CurrentUser, 'table', 'floor'
go

/*==============================================================*/
/* Table: instrument_initial_value                              */
/*==============================================================*/
create table instrument_initial_value (
   i_id                 int                  identity,
   r_id                 varchar(4)           null,
   f_id                 int                  null,
   b_id                 int                  null,
   ci_id                char(3)              null,
   i_water_meter        varchar(10)          null,
   i_electricity_meter  varchar(10)          null,
   constraint PK_INSTRUMENT_INITIAL_VALUE primary key nonclustered (i_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('instrument_initial_value') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'instrument_initial_value' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '房户入住前仪表信息初始化', 
   'user', @CurrentUser, 'table', 'instrument_initial_value'
go

/*==============================================================*/
/* Table: login                                                 */
/*==============================================================*/
create table login (
   l_id                 int                  identity,
   ad_id                char(3)              null,
   l_username           varchar(10)          not null,
   l_password           varchar(16)          not null,
   constraint PK_LOGIN primary key nonclustered (l_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('login') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'login' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '便于不同管理员管理系统', 
   'user', @CurrentUser, 'table', 'login'
go

/*==============================================================*/
/* Table: management                                            */
/*==============================================================*/
create table management (
   m_id                 int                  identity,
   f_id                 int                  null,
   b_id                 int                  null,
   ad_id                char(3)              null,
   constraint PK_MANAGEMENT primary key nonclustered (m_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('management') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'management' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '楼宇管理分配', 
   'user', @CurrentUser, 'table', 'management'
go

/*==============================================================*/
/* Table: over_fine                                             */
/*==============================================================*/
create table over_fine (
   of_over_fine         varchar(10)          not null,
   constraint PK_OVER_FINE primary key nonclustered (of_over_fine)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('over_fine') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'over_fine' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '业主超期未缴费所收取滞纳金比例', 
   'user', @CurrentUser, 'table', 'over_fine'
go

/*==============================================================*/
/* Table: owner                                                 */
/*==============================================================*/
create table owner (
   o_id                 int                  identity,
   o_name               varchar(20)          not null,
   o_birthday           datetime             null,
   o_native_place       varchar(20)          null,
   o_sex                char(2)              null,
   o_nationality        varchar(50)          null,
   o_address            varchar(50)          null,
   o_work_unit          varchar(50)          null,
   o_duty               varchar(30)          null,
   o_education          varchar(20)          null,
   o_nation             varchar(30)          null,
   o_telphone           char(11)             not null,
   o_idcard             char(18)             not null,
   o_bank_account       varchar(22)          null,
   o_bank               varchar(50)          null,
   o_postal_code        char(6)              null,
   o_police_station     varchar(50)          null,
   o_emergency_contact  varchar(50)          null,
   o_e_c_telphone       char(11)             null,
   o_e_c_address        varchar(50)          null,
   constraint PK_OWNER primary key nonclustered (o_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('owner') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'owner' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '业主个人信息', 
   'user', @CurrentUser, 'table', 'owner'
go

/*==============================================================*/
/* Table: property_fee                                          */
/*==============================================================*/
create table property_fee (
   pf_id                int                  identity,
   c_id                 int                  null,
   of_over_fine         varchar(10)          null,
   ci_id                char(3)              null,
   pf_last_time_reading varchar(10)          null,
   pf_reading           varchar(10)          null,
   pf_actual_dosage     varchar(10)          null,
   pf_total_fees        varchar(10)          null,
   pf_extended          int                  null,
   pf_overdue_fine      varchar(5)           null,
   pf_due               varchar(10)          null,
   pf_remission         varchar(5)           null,
   pf_inception         datetime             null,
   pf_fee_deadline      datetime             null,
   pf_deadline          datetime             null,
   pf_recorder          varchar(6)           null,
   pf_state             varchar(10)          null,
   pf_comment           text                 null,
   constraint PK_PROPERTY_FEE primary key nonclustered (pf_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('property_fee') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'property_fee' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '业主消费情况', 
   'user', @CurrentUser, 'table', 'property_fee'
go

/*==============================================================*/
/* Table: r_picture                                             */
/*==============================================================*/
create table r_picture (
   p_id                 int                  identity,
   r_id                 varchar(4)           not null,
   f_id                 int                  not null,
   b_id                 int                  not null,
   p_picture            varchar(100)         not null,
   constraint PK_R_PICTURE primary key nonclustered (p_id, r_id, f_id, b_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('r_picture') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'r_picture' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '房间的室内环境图', 
   'user', @CurrentUser, 'table', 'r_picture'
go

/*==============================================================*/
/* Table: rental                                                */
/*==============================================================*/
create table rental (
   rt_id                int                  identity,
   cp_id                int                  null,
   o_id                 int                  null,
   rt_state             char(4)              not null,
   rt_rental_time       date                 not null,
   rt_deadline          date                 null,
   constraint PK_RENTAL primary key nonclustered (rt_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('rental') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'rental' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '车位的购买或出租信息', 
   'user', @CurrentUser, 'table', 'rental'
go

/*==============================================================*/
/* Table: room                                                  */
/*==============================================================*/
create table room (
   b_id                 int                  not null,
   f_id                 int                  not null,
   r_id                 varchar(4)           not null,
   r_area               varchar(30)          null,
   r_type               varchar(10)          null,
   r_house_type         varchar(10)          null,
   r_property_type      varchar(10)          null,
   r_finish             varchar(10)          null,
   r_orientatin         varchar(10)          null,
   r_down_payment       varchar(20)          null,
   r_monthly_installment varchar(20)          null,
   r_state              char(4)              null,
   r_length             varchar(10)          null,
   r_width              varchar(10)          null,
   r_univalence         varchar(20)          null,
   r_total_value        varchar(20)          null,
   r_comment            text                 null,
   constraint PK_ROOM primary key nonclustered (r_id, f_id, b_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('room') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'room' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '单个房屋基本信息', 
   'user', @CurrentUser, 'table', 'room'
go

/*==============================================================*/
/* Table: salary                                                */
/*==============================================================*/
create table salary (
   s_id                 int                  identity,
   ad_id                char(3)              null,
   s_m_salary           varchar(6)           null,
   s_sick_leave         varchar(3)           null,
   s_sick_count         int                  null,
   s_personal_leave     varchar(3)           null,
   s_personal_count     int                  null,
   "s_gross-pay"        varchar(6)           null,
   s_comment            text                 null,
   constraint PK_SALARY primary key nonclustered (s_id)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('salary') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'salary' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '管理员工资信息', 
   'user', @CurrentUser, 'table', 'salary'
go

alter table "check"
   add constraint FK_CHECK_O_C_R_OWNER foreign key (o_id)
      references owner (o_id)
go

alter table "check"
   add constraint FK_CHECK_R_C_R_ROOM foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id)
go

alter table floor
   add constraint FK_FLOOR_B_F_R_BUILDING foreign key (b_id)
      references building (b_id)
go

alter table instrument_initial_value
   add constraint FK_INSTRUME_CI_I_R_COST_ITE foreign key (ci_id)
      references cost_item (ci_id)
go

alter table instrument_initial_value
   add constraint FK_INSTRUME_R_I_R_ROOM foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id)
go

alter table login
   add constraint FK_LOGIN_AD_L_R_ADMIN foreign key (ad_id)
      references admin (ad_id)
go

alter table management
   add constraint FK_MANAGEME_AD_M_R_ADMIN foreign key (ad_id)
      references admin (ad_id)
go

alter table management
   add constraint FK_MANAGEME_F_M_R_FLOOR foreign key (f_id, b_id)
      references floor (f_id, b_id)
go

alter table property_fee
   add constraint FK_PROPERTY_C_PF_R_CHECK foreign key (c_id)
      references "check" (c_id)
go

alter table property_fee
   add constraint FK_PROPERTY_CI_PF_R_COST_ITE foreign key (ci_id)
      references cost_item (ci_id)
go

alter table property_fee
   add constraint FK_PROPERTY_OF_PF_R_OVER_FIN foreign key (of_over_fine)
      references over_fine (of_over_fine)
go

alter table r_picture
   add constraint FK_R_PICTUR_R_P_R_ROOM foreign key (r_id, f_id, b_id)
      references room (r_id, f_id, b_id)
go

alter table rental
   add constraint FK_RENTAL_CP_R_R_CARPORT foreign key (cp_id)
      references carport (cp_id)
go

alter table rental
   add constraint FK_RENTAL_O_R_R_OWNER foreign key (o_id)
      references owner (o_id)
go

alter table room
   add constraint FK_ROOM_F_R_R_FLOOR foreign key (f_id, b_id)
      references floor (f_id, b_id)
go

alter table salary
   add constraint FK_SALARY_AD_S_R_ADMIN foreign key (ad_id)
      references admin (ad_id)
go





/****** Object:  Table [dbo].[qrtz_blob_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_blob_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[blob_data] [binary](400) NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_calendars]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_calendars](
	[sched_name] [varchar](120) NOT NULL,
	[calendar_name] [varchar](200) NOT NULL,
	[calendar] [varchar](400) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[calendar_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_cron_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_cron_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[cron_expression] [varchar](200) NOT NULL,
	[time_zone_id] [varchar](80) NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_fired_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_fired_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[entry_id] [varchar](95) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[instance_name] [varchar](200) NOT NULL,
	[fired_time] [bigint] NOT NULL,
	[sched_time] [bigint] NOT NULL,
	[priority] [int] NOT NULL,
	[state] [varchar](16) NOT NULL,
	[job_name] [varchar](200) NULL,
	[job_group] [varchar](200) NULL,
	[is_nonconcurrent] [varchar](1) NULL,
	[requests_recovery] [varchar](1) NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[entry_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_job_details]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_job_details](
	[sched_name] [varchar](120) NOT NULL,
	[job_name] [varchar](200) NOT NULL,
	[job_group] [varchar](200) NOT NULL,
	[description] [varchar](250) NULL,
	[job_class_name] [varchar](250) NOT NULL,
	[is_durable] [varchar](1) NOT NULL,
	[is_nonconcurrent] [varchar](1) NOT NULL,
	[is_update_data] [varchar](1) NOT NULL,
	[requests_recovery] [varchar](1) NOT NULL,
	[job_data] [varbinary](max) NULL,
 CONSTRAINT [PK__qrtz_job__1642BB8C16CE2545] PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[job_name] ASC,
	[job_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_locks]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_locks](
	[sched_name] [varchar](120) NOT NULL,
	[lock_name] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[lock_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_paused_trigger_grps]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_paused_trigger_grps](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_scheduler_state]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_scheduler_state](
	[sched_name] [varchar](120) NOT NULL,
	[instance_name] [varchar](200) NOT NULL,
	[last_checkin_time] [bigint] NOT NULL,
	[checkin_interval] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[instance_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_simple_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_simple_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[repeat_count] [bigint] NOT NULL,
	[repeat_interval] [bigint] NOT NULL,
	[times_triggered] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_simprop_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_simprop_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[str_prop_1] [varchar](512) NULL,
	[str_prop_2] [varchar](512) NULL,
	[str_prop_3] [varchar](512) NULL,
	[int_prop_1] [int] NULL,
	[int_prop_2] [int] NULL,
	[long_prop_1] [bigint] NULL,
	[long_prop_2] [bigint] NULL,
	[dec_prop_1] [decimal](13, 4) NULL,
	[dec_prop_2] [decimal](13, 4) NULL,
	[bool_prop_1] [varchar](1) NULL,
	[bool_prop_2] [varchar](1) NULL,
PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[qrtz_triggers]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[qrtz_triggers](
	[sched_name] [varchar](120) NOT NULL,
	[trigger_name] [varchar](200) NOT NULL,
	[trigger_group] [varchar](200) NOT NULL,
	[job_name] [varchar](200) NOT NULL,
	[job_group] [varchar](200) NOT NULL,
	[description] [varchar](250) NULL,
	[next_fire_time] [bigint] NULL,
	[prev_fire_time] [bigint] NULL,
	[priority] [int] NULL,
	[trigger_state] [varchar](16) NOT NULL,
	[trigger_type] [varchar](8) NOT NULL,
	[start_time] [bigint] NOT NULL,
	[end_time] [bigint] NULL,
	[calendar_name] [varchar](200) NULL,
	[misfire_instr] [smallint] NULL,
	[job_data] [varbinary](max) NULL,
 CONSTRAINT [PK__qrtz_tri__009FEA1C9FA6E964] PRIMARY KEY CLUSTERED
(
	[sched_name] ASC,
	[trigger_name] ASC,
	[trigger_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_config]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_config](
	[config_id] [int] IDENTITY(1,1) NOT NULL,
	[config_name] [varchar](100) NULL,
	[config_key] [varchar](100) NULL,
	[config_value] [varchar](100) NULL,
	[config_type] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[config_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_dept](
	[dept_id] [bigint] IDENTITY(1,1) NOT NULL,
	[parent_id] [bigint] NULL,
	[ancestors] [varchar](50) NULL,
	[dept_name] [varchar](30) NULL,
	[order_num] [int] NULL,
	[leader] [varchar](20) NULL,
	[phone] [varchar](11) NULL,
	[email] [varchar](50) NULL,
	[status] [char](1) NULL,
	[del_flag] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_dict_data]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_dict_data](
	[dict_code] [bigint] IDENTITY(1,1) NOT NULL,
	[dict_sort] [int] NULL,
	[dict_label] [varchar](100) NULL,
	[dict_value] [varchar](100) NULL,
	[dict_type] [varchar](100) NULL,
	[css_class] [varchar](100) NULL,
	[list_class] [varchar](100) NULL,
	[is_default] [char](1) NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[dict_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_dict_type]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_dict_type](
	[dict_id] [bigint] IDENTITY(1,1) NOT NULL,
	[dict_name] [varchar](100) NULL,
	[dict_type] [varchar](100) NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[dict_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_job]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_job](
	[job_id] [bigint] IDENTITY(1,1) NOT NULL,
	[job_name] [varchar](64) NOT NULL,
	[job_group] [varchar](64) NOT NULL,
	[method_name] [varchar](500) NULL,
	[method_params] [text] NULL,
	[cron_expression] [varchar](255) NULL,
	[misfire_policy] [varchar](20) NULL,
	[concurrent] [char](1) NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[job_id] ASC,
	[job_name] ASC,
	[job_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_job_log]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_job_log](
	[job_log_id] [bigint] IDENTITY(1,1) NOT NULL,
	[job_name] [varchar](64) NOT NULL,
	[job_group] [varchar](64) NOT NULL,
	[method_name] [varchar](500) NULL,
	[method_params] [text] NULL,
	[job_message] [text] NULL,
	[status] [char](1) NULL,
	[exception_info] [text] NULL,
	[create_time] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[job_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_logininfor]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_logininfor](
	[info_id] [bigint] IDENTITY(1,1) NOT NULL,
	[login_name] [varchar](50) NULL,
	[ipaddr] [varchar](50) NULL,
	[login_location] [varchar](255) NULL,
	[browser] [varchar](50) NULL,
	[os] [varchar](50) NULL,
	[status] [char](1) NULL,
	[msg] [text] NULL,
	[login_time] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_menu]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_menu](
	[menu_id] [bigint] IDENTITY(1,1) NOT NULL,
	[menu_name] [varchar](50) NOT NULL,
	[parent_id] [bigint] NULL,
	[order_num] [int] NULL,
	[url] [varchar](200) NULL,
	[target] [varchar](20) NULL,
	[menu_type] [char](1) NULL,
	[visible] [char](1) NULL,
	[perms] [varchar](100) NULL,
	[icon] [varchar](100) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_notice]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_notice](
	[notice_id] [int] IDENTITY(1,1) NOT NULL,
	[notice_title] [varchar](50) NOT NULL,
	[notice_type] [char](1) NOT NULL,
	[notice_content] [text] NOT NULL,
	[status] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[notice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_oper_log]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_oper_log](
	[oper_id] [bigint] IDENTITY(1,1) NOT NULL,
	[title] [varchar](50) NULL,
	[business_type] [int] NULL,
	[method] [varchar](100) NULL,
	[operator_type] [int] NULL,
	[oper_name] [varchar](50) NULL,
	[dept_name] [varchar](50) NULL,
	[oper_url] [varchar](255) NULL,
	[oper_ip] [varchar](50) NULL,
	[oper_location] [varchar](255) NULL,
	[oper_param] [text] NULL,
	[status] [int] NULL,
	[error_msg] [text] NULL,
	[oper_time] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[oper_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_post]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_post](
	[post_id] [bigint] IDENTITY(1,1) NOT NULL,
	[post_code] [varchar](64) NOT NULL,
	[post_name] [varchar](50) NOT NULL,
	[post_sort] [int] NOT NULL,
	[status] [char](1) NOT NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_role](
	[role_id] [bigint] IDENTITY(1,1) NOT NULL,
	[role_name] [varchar](30) NOT NULL,
	[role_key] [varchar](100) NOT NULL,
	[role_sort] [int] NOT NULL,
	[data_scope] [char](1) NULL,
	[status] [char](1) NOT NULL,
	[del_flag] [char](1) NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [varchar](500) NULL,
 CONSTRAINT [PK__sys_role__760965CC9EE7A5FA] PRIMARY KEY CLUSTERED
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_role_dept]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_dept](
	[role_id] [bigint] NOT NULL,
	[dept_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[role_id] ASC,
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sys_role_menu]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_menu](
	[role_id] [bigint] NOT NULL,
	[menu_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[role_id] ASC,
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_user](
	[user_id] [bigint] IDENTITY(1,1) NOT NULL,
	[dept_id] [bigint] NULL,
	[login_name] [varchar](30) NOT NULL,
	[user_name] [varchar](30) NOT NULL,
	[user_type] [varchar](2) NULL,
	[email] [varchar](50) NULL,
	[phonenumber] [varchar](11) NULL,
	[sex] [char](1) NULL,
	[avatar] [varchar](100) NULL,
	[password] [varchar](50) NULL,
	[salt] [varchar](20) NULL,
	[status] [char](1) NULL,
	[del_flag] [char](1) NULL,
	[login_ip] [varchar](50) NULL,
	[login_date] [datetime] NULL,
	[create_by] [varchar](64) NULL,
	[create_time] [datetime] NOT NULL,
	[update_by] [varchar](64) NULL,
	[update_time] [datetime] NULL,
	[remark] [text] NULL,
PRIMARY KEY CLUSTERED
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_user_online]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sys_user_online](
	[sessionId] [varchar](50) NOT NULL,
	[login_name] [varchar](50) NULL,
	[dept_name] [varchar](50) NULL,
	[ipaddr] [varchar](50) NULL,
	[login_location] [varchar](255) NULL,
	[browser] [varchar](50) NULL,
	[os] [varchar](50) NULL,
	[status] [varchar](10) NULL,
	[start_timestamp] [datetime] NULL,
	[last_access_time] [datetime] NULL,
	[expire_time] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[sys_user_post]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user_post](
	[user_id] [bigint] NOT NULL,
	[post_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[user_id] ASC,
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sys_user_role]    Script Date: 2019/12/1 2:20:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user_role](
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[qrtz_cron_triggers] ([sched_name], [trigger_name], [trigger_group], [cron_expression], [time_zone_id]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__1', N'DEFAULT', N'0/10 * * * * ?', N'Asia/Shanghai')
INSERT [dbo].[qrtz_cron_triggers] ([sched_name], [trigger_name], [trigger_group], [cron_expression], [time_zone_id]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__2', N'DEFAULT', N'0/20 * * * * ?', N'Asia/Shanghai')
INSERT [dbo].[qrtz_job_details] ([sched_name], [job_name], [job_group], [description], [job_class_name], [is_durable], [is_nonconcurrent], [is_update_data], [requests_recovery], [job_data]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__1', N'DEFAULT', NULL, N'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', N'0', N'1', N'0', N'0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F7372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720020636F6D2E72756F79692E636F6D6D6F6E2E626173652E42617365456E7469747900000000000000010200064C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000016E45EF44F8787400007070707400013174000E302F3130202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000174000672795461736B74000A72794E6F506172616D7374000074000130740001317800)
INSERT [dbo].[qrtz_job_details] ([sched_name], [job_name], [job_group], [description], [job_class_name], [is_durable], [is_nonconcurrent], [is_update_data], [requests_recovery], [job_data]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__2', N'DEFAULT', NULL, N'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', N'0', N'1', N'0', N'0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C770800000010000000017400135F5F5441534B5F50524F504552544945535F5F7372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200094C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000A6D6574686F644E616D6571007E00094C000C6D6574686F64506172616D7371007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720020636F6D2E72756F79692E636F6D6D6F6E2E626173652E42617365456E7469747900000000000000010200064C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001622CDE29E0787400007070707400013174000E302F3230202A202A202A202A203F740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC897372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870000000000000000274000672795461736B7400087279506172616D73740002727974000133740001317800)
INSERT [dbo].[qrtz_scheduler_state] ([sched_name], [instance_name], [last_checkin_time], [checkin_interval]) VALUES (N'RuoyiScheduler', N'DESKTOP-L9LLAOR1574598677388', 1574607839594, 15000)
INSERT [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group], [job_name], [job_group], [description], [next_fire_time], [prev_fire_time], [priority], [trigger_state], [trigger_type], [start_time], [end_time], [calendar_name], [misfire_instr], [job_data]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__1', N'DEFAULT', N'__TASK_CLASS_NAME__1', N'DEFAULT', NULL, 1574598680000, -1, 5, N'PAUSED', N'CRON', 1574598677000, 0, NULL, 0, NULL)
INSERT [dbo].[qrtz_triggers] ([sched_name], [trigger_name], [trigger_group], [job_name], [job_group], [description], [next_fire_time], [prev_fire_time], [priority], [trigger_state], [trigger_type], [start_time], [end_time], [calendar_name], [misfire_instr], [job_data]) VALUES (N'RuoyiScheduler', N'__TASK_CLASS_NAME__2', N'DEFAULT', N'__TASK_CLASS_NAME__2', N'DEFAULT', NULL, 1574598680000, -1, 5, N'PAUSED', N'CRON', 1574598679000, 0, NULL, 2, NULL)
SET IDENTITY_INSERT [dbo].[sys_config] ON

INSERT [dbo].[sys_config] ([config_id], [config_name], [config_key], [config_value], [config_type], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'主框架页-默认皮肤样式名称', N'sys.index.skinName', N'skin-blue', N'Y', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'默认 skin-default、蓝色 skin-blue、黄色 skin-yellow')
INSERT [dbo].[sys_config] ([config_id], [config_name], [config_key], [config_value], [config_type], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'用户管理-账号初始密码', N'sys.user.initPassword', N'123456', N'Y', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'初始化密码 123456')
SET IDENTITY_INSERT [dbo].[sys_config] OFF
SET IDENTITY_INSERT [dbo].[sys_dept] ON

INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (100, 0, N'0', N'太阳系科技', 0, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF60160FC74 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (101, 100, N'0,100', N'宇宙总公司', 1, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF60160FECC AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (102, 100, N'0,100', N'地球分公司', 2, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF60160FFF8 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (103, 101, N'0,100,101', N'信息监测部门', 1, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601614AF8 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (104, 101, N'0,100,101', N'周期运行部门', 2, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601615458 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (105, 101, N'0,100,101', N'资源管理部门', 3, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601617654 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (106, 101, N'0,100,101', N'发展规划部门', 4, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601618338 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (107, 101, N'0,100,101', N'资源回收部门', 5, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601618DC4 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (108, 102, N'0,100,102', N'监督运行部门', 1, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF601619E2C AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
INSERT [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (109, 102, N'0,100,102', N'名称协定部门', 2, N'创世者', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', CAST(0x0000AAF60161D414 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_dept] OFF
SET IDENTITY_INSERT [dbo].[sys_dict_data] ON

INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, 1, N'男', N'0', N'sys_user_sex', N'', N'', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'性别男')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, 2, N'女', N'1', N'sys_user_sex', N'', N'', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'性别女')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (3, 3, N'未知', N'2', N'sys_user_sex', N'', N'', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'性别未知')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (4, 1, N'显示', N'0', N'sys_show_hide', N'', N'primary', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'显示菜单')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (5, 2, N'隐藏', N'1', N'sys_show_hide', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'隐藏菜单')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (6, 1, N'正常', N'0', N'sys_normal_disable', N'', N'primary', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'正常状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (7, 2, N'停用', N'1', N'sys_normal_disable', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'停用状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (8, 1, N'正常', N'0', N'sys_job_status', N'', N'primary', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'正常状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (9, 2, N'暂停', N'1', N'sys_job_status', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'停用状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (10, 1, N'是', N'Y', N'sys_yes_no', N'', N'primary', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统默认是')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (11, 2, N'否', N'N', N'sys_yes_no', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统默认否')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (12, 1, N'通知', N'1', N'sys_notice_type', N'', N'warning', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'通知')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (13, 2, N'公告', N'2', N'sys_notice_type', N'', N'success', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'公告')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (14, 1, N'正常', N'0', N'sys_notice_status', N'', N'primary', N'Y', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'正常状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (15, 2, N'关闭', N'1', N'sys_notice_status', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'关闭状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (16, 1, N'新增', N'1', N'sys_oper_type', N'', N'info', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'新增操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (17, 2, N'修改', N'2', N'sys_oper_type', N'', N'info', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'修改操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (18, 3, N'删除', N'3', N'sys_oper_type', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'删除操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (19, 4, N'授权', N'4', N'sys_oper_type', N'', N'primary', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'授权操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (20, 5, N'导出', N'5', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'导出操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (21, 6, N'导入', N'6', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'导入操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (22, 7, N'强退', N'7', N'sys_oper_type', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'强退操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (23, 8, N'生成代码', N'8', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'生成操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (24, 9, N'清空数据', N'9', N'sys_oper_type', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'清空操作')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (25, 1, N'成功', N'0', N'sys_common_status', N'', N'primary', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'正常状态')
INSERT [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (26, 2, N'失败', N'1', N'sys_common_status', N'', N'danger', N'N', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'停用状态')
SET IDENTITY_INSERT [dbo].[sys_dict_data] OFF
SET IDENTITY_INSERT [dbo].[sys_dict_type] ON

INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'用户性别', N'sys_user_sex', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'用户性别列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'菜单状态', N'sys_show_hide', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'菜单状态列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (3, N'系统开关', N'sys_normal_disable', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统开关列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (4, N'任务状态', N'sys_job_status', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'任务状态列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (5, N'系统是否', N'sys_yes_no', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统是否列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (6, N'通知类型', N'sys_notice_type', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'通知类型列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (7, N'通知状态', N'sys_notice_status', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'通知状态列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (8, N'操作类型', N'sys_oper_type', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'操作类型列表')
INSERT [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (9, N'系统状态', N'sys_common_status', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'登录状态列表')
SET IDENTITY_INSERT [dbo].[sys_dict_type] OFF
SET IDENTITY_INSERT [dbo].[sys_job_log] ON

INSERT [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (1, N'ryTask', N'系统默认（无参）', N'ryNoParams', NULL, N'ryTask 总共耗时：1毫秒', N'0', NULL, CAST(0x0000AAE9017AD860 AS DateTime))
INSERT [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (2, N'ryTask', N'系统默认（无参）', N'ryNoParams', NULL, N'ryTask 总共耗时：1毫秒', N'0', NULL, CAST(0x0000AAFE0158CE50 AS DateTime))
INSERT [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (3, N'ryTask', N'系统默认（无参）', N'ryNoParams', NULL, N'ryTask 总共耗时：0毫秒', N'0', NULL, CAST(0x0000AAFE0158DD8C AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_job_log] OFF
SET IDENTITY_INSERT [dbo].[sys_logininfor] ON

INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (1, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAEF0175F728 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (2, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAEF0177189C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (3, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AAEF0177B0F4 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (4, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAEF0177B478 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (5, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AAEF0177F03C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (6, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAEF0177F4EC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (7, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AAEF017F0778 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (8, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAEF017F09D0 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (9, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF00165CE70 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (10, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF201489FBC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (11, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF30087EED4 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (12, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AAF30089D654 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (13, N'lyjj', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'密码输入错误1次', CAST(0x0000AAF3008A5610 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (14, N'lyjj', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'密码输入错误2次', CAST(0x0000AAF3008A861C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (15, N'lyjj', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'密码输入错误1次', CAST(0x0000AAF3008AB880 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (16, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF3008ACA14 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (17, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AAF3008CA258 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (18, N'wtt', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF3008CAA8C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (19, N'wtt', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AAF3008CDE1C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (20, N'lyjj', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'密码输入错误2次', CAST(0x0000AAF3008D0E28 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (21, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF3008D1E90 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (22, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF30092E578 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (23, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF40175BDBC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (24, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF4017640FC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (25, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF40183DE24 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (26, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF5017E9A7C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (27, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF6015E70E4 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (28, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AAF601641954 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (29, N'wtt', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF60164412C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (30, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF6016C1064 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (31, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF6016F1700 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (32, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF701665534 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (33, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF701754AE4 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (34, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF7017942E8 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (35, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF70179C754 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (36, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF7017DD218 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (37, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF70180CCFC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (38, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AAF70181599C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (39, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAF7018161D0 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (40, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AAFC014FA438 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (41, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAFC014FAA14 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (42, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AAFE0151D58C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (43, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB0001636D10 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (44, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB0001637094 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (45, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'退出成功', CAST(0x0000AB0001637D78 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (46, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB000163B93C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (47, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB000163ECCC AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (48, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB000164043C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (49, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB0001648650 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (50, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB0700F8712C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (51, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB080009D788 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (52, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB080009E598 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (53, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB08000A0C44 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (54, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB08000A0FC8 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (55, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB08000A15A4 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (56, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB08000A1928 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (57, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB0800F188D0 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (58, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB0A017DF414 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (59, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB0A017F4B70 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (60, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB0F01616718 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (61, N'admin', N'127.0.0.1', N'内网IP', N'Microsoft Edge', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB0F01617B04 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (62, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB12000E56A2 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (63, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB12000E5FDF AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (64, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB12000EE8DA AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (65, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB12001062EA AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (66, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB120011C4AF AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (67, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB150181D2AB AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (68, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB150183915A AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (69, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB160005630C AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (70, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB1600087D81 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (71, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16000AC33E AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (72, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB16000C5005 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (73, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16000C56A1 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (74, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16000CC9B7 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (75, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16000F194D AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (76, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB160014BE07 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (77, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB16001778E8 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (78, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB160017800E AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (79, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB160018CB9D AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (80, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16001DB7D0 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (81, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'1', N'验证码错误', CAST(0x0000AB16001E4909 AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (82, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16001E4FDA AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (83, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16001EE2EB AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (84, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB16001F53AF AS DateTime))
INSERT [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (85, N'admin', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'0', N'登录成功', CAST(0x0000AB160020490D AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_logininfor] OFF
SET IDENTITY_INSERT [dbo].[sys_menu] ON

INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'系统管理', 0, 1, N'#', N'', N'M', N'0', N'', N'fa fa-gear', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统管理目录')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'系统监控', 0, 2, N'#', N'', N'M', N'0', N'', N'fa fa-video-camera', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统监控目录')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (3, N'系统工具', 0, 3, N'#', N'', N'M', N'0', N'', N'fa fa-bars', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统工具目录')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (100, N'用户管理', 1, 1, N'/system/user', N'', N'C', N'0', N'system:user:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'用户管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (101, N'角色管理', 1, 2, N'/system/role', N'', N'C', N'0', N'system:role:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'角色管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (102, N'菜单管理', 1, 3, N'/system/menu', N'', N'C', N'0', N'system:menu:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'菜单管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (103, N'部门管理', 1, 4, N'/system/dept', N'', N'C', N'0', N'system:dept:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'部门管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (104, N'岗位管理', 1, 5, N'/system/post', N'', N'C', N'0', N'system:post:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'岗位管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (105, N'字典管理', 1, 6, N'/system/dict', N'', N'C', N'0', N'system:dict:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'字典管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (106, N'参数设置', 1, 7, N'/system/config', N'', N'C', N'0', N'system:config:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'参数设置菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (107, N'通知公告', 1, 8, N'/system/notice', N'', N'C', N'0', N'system:notice:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'通知公告菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (108, N'日志管理', 1, 9, N'#', N'', N'M', N'0', N'', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'日志管理菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (109, N'在线用户', 2, 1, N'/monitor/online', N'', N'C', N'0', N'monitor:online:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'在线用户菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (110, N'定时任务', 2, 2, N'/monitor/job', N'', N'C', N'0', N'monitor:job:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'定时任务菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (111, N'数据监控', 2, 3, N'/monitor/data', N'', N'C', N'0', N'monitor:data:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'数据监控菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (112, N'服务监控', 2, 3, N'/monitor/server', N'', N'C', N'0', N'monitor:server:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'服务监控菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (113, N'表单构建', 3, 1, N'/tool/build', N'', N'C', N'0', N'tool:build:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'表单构建菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (114, N'代码生成', 3, 2, N'/tool/gen', N'', N'C', N'0', N'tool:gen:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'代码生成菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (115, N'系统接口', 3, 3, N'/tool/swagger', N'', N'C', N'0', N'tool:swagger:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'系统接口菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (500, N'操作日志', 108, 1, N'/monitor/operlog', N'', N'C', N'0', N'monitor:operlog:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'操作日志菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (501, N'登录日志', 108, 2, N'/monitor/logininfor', N'', N'C', N'0', N'monitor:logininfor:view', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'登录日志菜单')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1000, N'用户查询', 100, 1, N'#', N'', N'F', N'0', N'system:user:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1001, N'用户新增', 100, 2, N'#', N'', N'F', N'0', N'system:user:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1002, N'用户修改', 100, 3, N'#', N'', N'F', N'0', N'system:user:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1003, N'用户删除', 100, 4, N'#', N'', N'F', N'0', N'system:user:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1004, N'用户导出', 100, 5, N'#', N'', N'F', N'0', N'system:user:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1005, N'用户导入', 100, 6, N'#', N'', N'F', N'0', N'system:user:import', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1006, N'重置密码', 100, 7, N'#', N'', N'F', N'0', N'system:user:resetPwd', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1007, N'角色查询', 101, 1, N'#', N'', N'F', N'0', N'system:role:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1008, N'角色新增', 101, 2, N'#', N'', N'F', N'0', N'system:role:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1009, N'角色修改', 101, 3, N'#', N'', N'F', N'0', N'system:role:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1010, N'角色删除', 101, 4, N'#', N'', N'F', N'0', N'system:role:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1011, N'角色导出', 101, 5, N'#', N'', N'F', N'0', N'system:role:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1012, N'菜单查询', 102, 1, N'#', N'', N'F', N'0', N'system:menu:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1013, N'菜单新增', 102, 2, N'#', N'', N'F', N'0', N'system:menu:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1014, N'菜单修改', 102, 3, N'#', N'', N'F', N'0', N'system:menu:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1015, N'菜单删除', 102, 4, N'#', N'', N'F', N'0', N'system:menu:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1016, N'部门查询', 103, 1, N'#', N'', N'F', N'0', N'system:dept:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1017, N'部门新增', 103, 2, N'#', N'', N'F', N'0', N'system:dept:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1018, N'部门修改', 103, 3, N'#', N'', N'F', N'0', N'system:dept:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1019, N'部门删除', 103, 4, N'#', N'', N'F', N'0', N'system:dept:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1020, N'岗位查询', 104, 1, N'#', N'', N'F', N'0', N'system:post:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1021, N'岗位新增', 104, 2, N'#', N'', N'F', N'0', N'system:post:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1022, N'岗位修改', 104, 3, N'#', N'', N'F', N'0', N'system:post:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1023, N'岗位删除', 104, 4, N'#', N'', N'F', N'0', N'system:post:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1024, N'岗位导出', 104, 5, N'#', N'', N'F', N'0', N'system:post:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1025, N'字典查询', 105, 1, N'#', N'', N'F', N'0', N'system:dict:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1026, N'字典新增', 105, 2, N'#', N'', N'F', N'0', N'system:dict:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1027, N'字典修改', 105, 3, N'#', N'', N'F', N'0', N'system:dict:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1028, N'字典删除', 105, 4, N'#', N'', N'F', N'0', N'system:dict:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1029, N'字典导出', 105, 5, N'#', N'', N'F', N'0', N'system:dict:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1030, N'参数查询', 106, 1, N'#', N'', N'F', N'0', N'system:config:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1031, N'参数新增', 106, 2, N'#', N'', N'F', N'0', N'system:config:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1032, N'参数修改', 106, 3, N'#', N'', N'F', N'0', N'system:config:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1033, N'参数删除', 106, 4, N'#', N'', N'F', N'0', N'system:config:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1034, N'参数导出', 106, 5, N'#', N'', N'F', N'0', N'system:config:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1035, N'公告查询', 107, 1, N'#', N'', N'F', N'0', N'system:notice:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1036, N'公告新增', 107, 2, N'#', N'', N'F', N'0', N'system:notice:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1037, N'公告修改', 107, 3, N'#', N'', N'F', N'0', N'system:notice:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1038, N'公告删除', 107, 4, N'#', N'', N'F', N'0', N'system:notice:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1039, N'操作查询', 500, 1, N'#', N'', N'F', N'0', N'monitor:operlog:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1040, N'操作删除', 500, 2, N'#', N'', N'F', N'0', N'monitor:operlog:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1041, N'详细信息', 500, 3, N'#', N'', N'F', N'0', N'monitor:operlog:detail', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1042, N'日志导出', 500, 4, N'#', N'', N'F', N'0', N'monitor:operlog:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1043, N'登录查询', 501, 1, N'#', N'', N'F', N'0', N'monitor:logininfor:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1044, N'登录删除', 501, 2, N'#', N'', N'F', N'0', N'monitor:logininfor:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1045, N'日志导出', 501, 3, N'#', N'', N'F', N'0', N'monitor:logininfor:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1046, N'在线查询', 109, 1, N'#', N'', N'F', N'0', N'monitor:online:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1047, N'批量强退', 109, 2, N'#', N'', N'F', N'0', N'monitor:online:batchForceLogout', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1048, N'单条强退', 109, 3, N'#', N'', N'F', N'0', N'monitor:online:forceLogout', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1049, N'任务查询', 110, 1, N'#', N'', N'F', N'0', N'monitor:job:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1050, N'任务新增', 110, 2, N'#', N'', N'F', N'0', N'monitor:job:add', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1051, N'任务修改', 110, 3, N'#', N'', N'F', N'0', N'monitor:job:edit', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1052, N'任务删除', 110, 4, N'#', N'', N'F', N'0', N'monitor:job:remove', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1053, N'状态修改', 110, 5, N'#', N'', N'F', N'0', N'monitor:job:changeStatus', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1054, N'任务详细', 110, 6, N'#', N'', N'F', N'0', N'monitor:job:detail', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1055, N'任务导出', 110, 7, N'#', N'', N'F', N'0', N'monitor:job:export', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1056, N'生成查询', 114, 1, N'#', N'menuItem', N'F', N'1', N'tool:gen:list', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'admin', CAST(0x0000AB1600249BCE AS DateTime), N'')
INSERT [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [target], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1057, N'生成代码', 114, 2, N'#', N'menuItem', N'F', N'1', N'tool:gen:code', N'#', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'admin', CAST(0x0000AB1600248B41 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
SET IDENTITY_INSERT [dbo].[sys_notice] ON

INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'温馨提醒：2018-07-01 若依新版本发布啦', N'2', N'新版本内容', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'管理员')
INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'维护通知：2018-07-01 若依系统凌晨维护', N'1', N'维护内容', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'管理员')
INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (3, N'温馨提醒：2019-03-20 若依3.2.1版本发布啦', N'2', N'<p>温馨提醒：2019-03-20 若依3.2.1版本发布啦</p><p>本次更新内容:</p><ol><li>1、升级SpringBoot到最新版本2.1.3</li><li>2、修复一些已知bug</li><li>3、新增表格客户端分页选项</li><li>4、使用jsonview展示操作日志参数</li><li>5、修复一些安全问题</li><li>6、优化现有代码</li><li>7、定时任务支持并发控制</li></ol>', N'0', N'admin', CAST(0x0000AA1600083D60 AS DateTime), N'LERRY', CAST(0x0000AA1600083D60 AS DateTime), N'管理员')
INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (4, N'温馨提醒：2019-03-20 若依3.3.0版本发布啦', N'2', N'<p>温馨提醒：2019-03-31 若依3.3.0版本发布啦</p><p>本次更新内容见<a href=''https://github.com/lerry903/RuoYi/releases/tag/V3.3.0''>gitHub</a></p>', N'0', N'admin', CAST(0x0000AA21011DA500 AS DateTime), N'LERRY', CAST(0x0000AA21011DA500 AS DateTime), N'管理员')
INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (5, N'温馨提醒：2019-05-18 若依3.3.1版本发布啦', N'2', N'<h2>温馨提醒：2019-05-18 若依3.3.1版本发布啦<span style=''font-family: "Comic Sans MS";''>?</span><span style=''font-family: "Arial Black";''>?</span><span style=''font-family: "Arial";''>?</span></h2><p>本次更新内容见<a href="https://github.com/lerry903/RuoYi/releases/tag/V3.3.1">gitHub</a></p>', N'0', N'admin', CAST(0x0000AAF7017E3104 AS DateTime), N'admin', CAST(0x0000AAF7017E3104 AS DateTime), N'管理员')
INSERT [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (6, N'温馨提醒：2019-06-07 若依3.4.0版本发布啦', N'2', N'<p>温馨提醒：2019-06-07 若依3.4.0版本发布啦</p><p>本次更新内容见<a href=''https://github.com/lerry903/RuoYi/releases/tag/V3.4.0''>gitHub</a></p>', N'0', N'admin', CAST(0x0000AA65011F0490 AS DateTime), N'LERRY', CAST(0x0000AA65011F0490 AS DateTime), N'管理员')
SET IDENTITY_INSERT [dbo].[sys_notice] OFF
SET IDENTITY_INSERT [dbo].[sys_oper_log] ON

INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (100, N'定时任务', 2, N'com.ruoyi.web.controller.monitor.SysJobController.changeStatus()', 1, N'admin', N'研发部门', N'/monitor/job/changeStatus', N'127.0.0.1', N'内网IP', N'{
  "jobId" : [ "1" ],
  "status" : [ "0" ]
}', 0, NULL, CAST(0x0000AAE9017AD158 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (101, N'定时任务', 2, N'com.ruoyi.web.controller.monitor.SysJobController.changeStatus()', 1, N'admin', N'研发部门', N'/monitor/job/changeStatus', N'127.0.0.1', N'内网IP', N'{
  "jobId" : [ "1" ],
  "status" : [ "1" ]
}', 0, NULL, CAST(0x0000AAE9017AD860 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (102, N'重置密码', 2, N'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 1, N'admin', N'研发部门', N'/system/user/profile/resetPwd', N'127.0.0.1', N'内网IP', N'{
  "userId" : [ "1" ],
  "loginName" : [ "admin" ],
  "oldPassword" : [ "admin123" ],
  "newPassword" : [ "admin111" ],
  "confirm" : [ "admin111" ]
}', 0, NULL, CAST(0x0000AAEC011BA4E4 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (103, N'重置密码', 2, N'com.ruoyi.web.controller.system.SysProfileController.resetPwd()', 1, N'admin', N'研发部门', N'/system/user/profile/resetPwd', N'127.0.0.1', N'内网IP', N'{
  "userId" : [ "1" ],
  "loginName" : [ "admin" ],
  "oldPassword" : [ "admin111" ],
  "newPassword" : [ "admin123" ],
  "confirm" : [ "admin123" ]
}', 0, NULL, CAST(0x0000AAEC011C0628 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (104, N'用户管理', 1, N'com.ruoyi.web.controller.system.SysUserController.addSave()', 1, N'admin', N'研发部门', N'/system/user/add', N'127.0.0.1', N'内网IP', N'{
  "deptId" : [ "100" ],
  "userName" : [ "LYJJ" ],
  "deptName" : [ "若依科技" ],
  "phonenumber" : [ "18209876542" ],
  "email" : [ "1572882331@qq.com" ],
  "loginName" : [ "lyjj" ],
  "password" : [ "123456" ],
  "sex" : [ "0" ],
  "role" : [ "1" ],
  "remark" : [ "" ],
  "status" : [ "0" ],
  "roleIds" : [ "1" ],
  "postIds" : [ "3" ]
}', 0, NULL, CAST(0x0000AAEC011C99D0 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (105, N'重置密码', 2, N'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 1, N'admin', N'研发部门', N'/system/user/resetPwd/100', N'127.0.0.1', N'内网IP', N'{ }', 0, NULL, CAST(0x0000AAEC0153D6D4 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (106, N'登陆日志', 9, N'com.ruoyi.web.controller.monitor.SysLogininforController.clean()', 1, N'admin', N'研发部门', N'/monitor/logininfor/clean', N'127.0.0.1', N'内网IP', N'{ }', 0, NULL, CAST(0x0000AAEF01737D2C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (107, N'操作日志', 5, N'com.ruoyi.web.controller.monitor.SysOperlogController.export()', 1, N'admin', N'研发部门', N'/monitor/operlog/export', N'127.0.0.1', N'内网IP', N'{
  "title" : [ "" ],
  "operName" : [ "" ],
  "status" : [ "" ],
  "params[beginTime]" : [ "" ],
  "params[endTime]" : [ "" ]
}', 0, NULL, CAST(0x0000AAEF01738A10 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (108, N'在线用户', 7, N'com.ruoyi.web.controller.monitor.SysUserOnlineController.batchForceLogout()', 1, N'admin', N'研发部门', N'/monitor/online/batchForceLogout', N'127.0.0.1', N'内网IP', N'{
  "ids[]" : [ "78c3a760-86c3-42e4-8f74-3879aaaffacf" ]
}', 0, NULL, CAST(0x0000AAEF0178F0E0 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (109, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 1, N'admin', N'研发部门', N'/system/role/authDataScope', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "dataScope" : [ "2" ],
  "deptIds" : [ "100,101,105,106" ]
}', 0, NULL, CAST(0x0000AAF300889FC8 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (110, N'角色管理', 4, N'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUser()', 1, N'admin', N'研发部门', N'/system/role/authUser/cancel', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "1" ],
  "userId" : [ "100" ]
}', 0, NULL, CAST(0x0000AAF300897768 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (111, N'角色管理', 4, N'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 1, N'admin', N'研发部门', N'/system/role/authUser/selectAll', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "userIds" : [ "100" ]
}', 0, NULL, CAST(0x0000AAF300898DAC AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (112, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 1, N'admin', N'研发部门', N'/system/role/authDataScope', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "dataScope" : [ "2" ],
  "deptIds" : [ "100,101,105,106" ]
}', 0, NULL, CAST(0x0000AAF3008AFB4C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (113, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.editSave()', 1, N'admin', N'研发部门', N'/system/role/edit', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "roleSort" : [ "2" ],
  "status" : [ "0" ],
  "remark" : [ "普通角色" ],
  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,113,114,1056,115" ]
}', 0, NULL, CAST(0x0000AAF3008B095C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (114, N'岗位管理', 2, N'com.ruoyi.web.controller.system.SysPostController.editSave()', 1, N'admin', N'研发部门', N'/system/post/edit', N'127.0.0.1', N'内网IP', N'{
  "postId" : [ "1" ],
  "postName" : [ "董事长" ],
  "postCode" : [ "ceo" ],
  "postSort" : [ "1" ],
  "status" : [ "0" ],
  "remark" : [ "" ]
}', 0, NULL, CAST(0x0000AAF3008B1AF0 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (115, N'用户管理', 1, N'com.ruoyi.web.controller.system.SysUserController.addSave()', 1, N'admin', N'研发部门', N'/system/user/add', N'127.0.0.1', N'内网IP', N'{
  "deptId" : [ "106" ],
  "userName" : [ "wt" ],
  "deptName" : [ "财务部门" ],
  "phonenumber" : [ "18209999999" ],
  "email" : [ "1579999999@qq.com" ],
  "loginName" : [ "wtt" ],
  "password" : [ "admin123" ],
  "sex" : [ "0" ],
  "role" : [ "2" ],
  "remark" : [ "" ],
  "status" : [ "0" ],
  "roleIds" : [ "2" ],
  "postIds" : [ "2" ]
}', 0, NULL, CAST(0x0000AAF3008B9D04 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (116, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.editSave()', 1, N'admin', N'研发部门', N'/system/role/edit', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "roleSort" : [ "2" ],
  "status" : [ "0" ],
  "remark" : [ "普通角色" ],
  "menuIds" : [ "1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,1055,111,112,3,113,114,1056,115" ]
}', 0, NULL, CAST(0x0000AAF3008C4240 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (117, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 1, N'admin', N'研发部门', N'/system/role/authDataScope', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "dataScope" : [ "2" ],
  "deptIds" : [ "100,101,105,106" ]
}', 0, NULL, CAST(0x0000AAF3008C481C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (118, N'角色管理', 2, N'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 1, N'admin', N'研发部门', N'/system/role/authDataScope', N'127.0.0.1', N'内网IP', N'{
  "roleId" : [ "2" ],
  "roleName" : [ "普通角色" ],
  "roleKey" : [ "common" ],
  "dataScope" : [ "2" ],
  "deptIds" : [ "100,101,105,106" ]
}', 0, NULL, CAST(0x0000AAF3008D2DCC AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (119, N'用户管理', 3, N'com.ruoyi.web.controller.system.SysUserController.remove()', 1, N'admin', N'研发部门', N'/system/user/remove', N'127.0.0.1', N'内网IP', N'{
  "ids" : [ "100" ]
}', 0, NULL, CAST(0x0000AAF3008D4FC8 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (120, N'字典类型', 5, N'com.ruoyi.web.controller.system.SysDictTypeController.export()', 1, N'admin', N'信息监测部门', N'/system/dict/export', N'127.0.0.1', N'内网IP', N'{
  "dictName" : [ "" ],
  "dictType" : [ "" ],
  "status" : [ "" ],
  "params[beginTime]" : [ "" ],
  "params[endTime]" : [ "" ]
}', 0, NULL, CAST(0x0000AAF70177A794 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (121, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 1, N'admin', N'信息监测部门', N'/system/user/profile/updateAvatar', N'127.0.0.1', N'内网IP', N'{ }', 0, NULL, CAST(0x0000AAF701781A6C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (122, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 1, N'admin', N'信息监测部门', N'/system/user/profile/updateAvatar', N'127.0.0.1', N'内网IP', N'{ }', 0, NULL, CAST(0x0000AAF70179754C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (123, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.updateAvatar()', 1, N'admin', N'信息监测部门', N'/system/user/profile/updateAvatar', N'127.0.0.1', N'内网IP', N'{ }', 0, NULL, CAST(0x0000AAF7017B2A68 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (124, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.update()', 1, N'admin', N'信息监测部门', N'/system/user/profile/update', N'127.0.0.1', N'内网IP', N'{
  "id" : [ "" ],
  "userName" : [ "系统管理员" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "sex" : [ "1" ]
}', 0, NULL, CAST(0x0000AAF7017B329C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (125, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.update()', 1, N'admin', N'信息监测部门', N'/system/user/profile/update', N'127.0.0.1', N'内网IP', N'{
  "id" : [ "" ],
  "userName" : [ "系统管理员" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "sex" : [ "1" ]
}', 0, NULL, CAST(0x0000AAF7017B3F80 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (126, N'通知公告', 2, N'com.ruoyi.web.controller.system.SysNoticeController.editSave()', 1, N'admin', N'信息监测部门', N'/system/notice/edit', N'127.0.0.1', N'内网IP', N'{
  "noticeId" : [ "5" ],
  "noticeTitle" : [ "温馨提醒：2019-05-18 若依3.3.1版本发布啦" ],
  "noticeType" : [ "2" ],
  "noticeContent" : [ "<h2>温馨提醒：2019-05-18 若依3.3.1版本发布啦<span style=''font-family: \"Comic Sans MS\";''>?</span><span style=''font-family: \"Arial Black\";''>?</span><span style=''font-family: \"Arial\";''>?</span></h2><p>本次更新内容见<a href=\"https://github.com/lerry903/RuoYi/releases/tag/V3.3.1\">gitHub</a></p>" ],
  "status" : [ "0" ]
}', 0, NULL, CAST(0x0000AAF7017E3104 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (127, N'个人信息', 2, N'com.ruoyi.web.controller.system.SysProfileController.update()', 1, N'admin', N'信息监测部门', N'/system/user/profile/update', N'127.0.0.1', N'内网IP', N'{
  "id" : [ "" ],
  "userName" : [ "系统管理员" ],
  "phonenumber" : [ "15888888888" ],
  "email" : [ "ry@163.com" ],
  "sex" : [ "1" ]
}', 1, N'演示模式，禁止操作', CAST(0x0000AAF70181ABA4 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (128, N'定时任务', 2, N'com.ruoyi.web.controller.monitor.SysJobController.run()', 1, N'admin', N'信息监测部门', N'/monitor/job/run', N'127.0.0.1', N'内网IP', N'{
  "jobId" : [ "1" ]
}', 0, NULL, CAST(0x0000AAFE0158CD24 AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (129, N'定时任务', 2, N'com.ruoyi.web.controller.monitor.SysJobController.changeStatus()', 1, N'admin', N'信息监测部门', N'/monitor/job/changeStatus', N'127.0.0.1', N'内网IP', N'{
  "jobId" : [ "1" ],
  "status" : [ "0" ]
}', 0, NULL, CAST(0x0000AAFE0158DD8C AS DateTime))
INSERT [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (130, N'定时任务', 2, N'com.ruoyi.web.controller.monitor.SysJobController.changeStatus()', 1, N'admin', N'信息监测部门', N'/monitor/job/changeStatus', N'127.0.0.1', N'内网IP', N'{
  "jobId" : [ "1" ],
  "status" : [ "1" ]
}', 0, NULL, CAST(0x0000AAFE0158DFE4 AS DateTime))
SET IDENTITY_INSERT [dbo].[sys_oper_log] OFF
SET IDENTITY_INSERT [dbo].[sys_post] ON

INSERT [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'ceo', N'董事长', 1, N'0', N'admin', CAST(0x0000AAF3008B1AF0 AS DateTime), N'admin', CAST(0x0000AAF3008B1AF0 AS DateTime), N'')
INSERT [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'se', N'项目经理', 2, N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (3, N'hr', N'人力资源', 3, N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
INSERT [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (4, N'user', N'普通员工', 4, N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[sys_post] OFF
SET IDENTITY_INSERT [dbo].[sys_role] ON

INSERT [dbo].[sys_role] ([role_id], [role_name], [role_key], [role_sort], [data_scope], [status], [del_flag], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, N'管理员', N'admin', 1, N'1', N'0', N'0', N'admin', CAST(0x0000A8A500BE5690 AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'管理员')
INSERT [dbo].[sys_role] ([role_id], [role_name], [role_key], [role_sort], [data_scope], [status], [del_flag], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, N'普通角色', N'common', 2, N'2', N'0', N'0', N'admin', CAST(0x0000AAF3008D2DCC AS DateTime), N'admin', CAST(0x0000AAF3008D2DCC AS DateTime), N'普通角色')
SET IDENTITY_INSERT [dbo].[sys_role] OFF
INSERT [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (2, 100)
INSERT [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (2, 101)
INSERT [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (2, 105)
INSERT [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (2, 106)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 2)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 3)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 100)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 101)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 102)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 103)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 104)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 105)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 106)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 107)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 108)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 109)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 110)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 111)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 112)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 113)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 114)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 115)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 500)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 501)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1000)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1001)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1002)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1003)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1004)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1005)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1006)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1007)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1008)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1009)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1010)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1011)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1012)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1013)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1014)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1015)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1016)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1017)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1018)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1019)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1020)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1021)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1022)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1023)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1024)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1025)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1026)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1027)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1028)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1029)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1030)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1031)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1032)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1033)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1034)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1035)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1036)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1037)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1038)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1039)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1040)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1041)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1042)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1043)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1044)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1045)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1046)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1047)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1048)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1049)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1050)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1051)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1052)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1053)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1054)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1055)
INSERT [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (2, 1056)
SET IDENTITY_INSERT [dbo].[sys_user] ON

INSERT [dbo].[sys_user] ([user_id], [dept_id], [login_name], [user_name], [user_type], [email], [phonenumber], [sex], [avatar], [password], [salt], [status], [del_flag], [login_ip], [login_date], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (1, 103, N'admin', N'系统管理员', N'00', N'ry@163.com', N'15888888888', N'1', N'2019/10/31\9cc11b0ed74ba724f70d236dcc02c8e1.png', N'38c6c5ae9c543504ccd6d8d8d6b84d7e', N'801be3', N'0', N'0', N'127.0.0.1', CAST(0x0000AB1600204901 AS DateTime), N'admin', CAST(0x0000AB0F01617B04 AS DateTime), N'ry', CAST(0x0000AB1600204916 AS DateTime), N'管理员')
INSERT [dbo].[sys_user] ([user_id], [dept_id], [login_name], [user_name], [user_type], [email], [phonenumber], [sex], [avatar], [password], [salt], [status], [del_flag], [login_ip], [login_date], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (2, 105, N'LERRY', N'LERRY', N'00', N'ry@qq.com', N'15666666666', N'1', N'', N'38c6c5ae9c543504ccd6d8d8d6b84d7e', N'222222', N'0', N'0', N'127.0.0.1', CAST(0x0000A8A500BE5690 AS DateTime), N'admin', CAST(0x0000AAF3008A492C AS DateTime), N'ry', CAST(0x0000A8A500BE5690 AS DateTime), N'测试员')
INSERT [dbo].[sys_user] ([user_id], [dept_id], [login_name], [user_name], [user_type], [email], [phonenumber], [sex], [avatar], [password], [salt], [status], [del_flag], [login_ip], [login_date], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (101, 106, N'wtt', N'wt', N'00', N'1579999999@qq.com', N'18209999999', N'0', N'', N'b96b76762e4617d2e6dce5892cf94954', N'120e13', N'0', N'0', N'127.0.0.1', CAST(0x0000AAF60164412C AS DateTime), N'admin', CAST(0x0000AAF60164412C AS DateTime), N'', CAST(0x0000AAF60164412C AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[sys_user] OFF
INSERT [dbo].[sys_user_online] ([sessionId], [login_name], [dept_name], [ipaddr], [login_location], [browser], [os], [status], [start_timestamp], [last_access_time], [expire_time]) VALUES (N'81538489-d5a2-4a4f-91aa-43c7602e3370', N'admin', N'信息监测部门', N'127.0.0.1', N'内网IP', N'Chrome', N'Windows 10', N'ON_LINE', CAST(0x0000AB16000CC392 AS DateTime), CAST(0x0000AB1600247F20 AS DateTime), 1800000)
INSERT [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (1, 1)
INSERT [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (2, 2)
INSERT [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (100, 3)
INSERT [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (101, 2)
INSERT [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (1, 1)
INSERT [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (2, 2)
INSERT [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (100, 2)
INSERT [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (101, 2)
ALTER TABLE [dbo].[sys_config] ADD  DEFAULT (N'N') FOR [config_type]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ((0)) FOR [order_num]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT (N'0') FOR [del_flag]
GO
ALTER TABLE [dbo].[sys_dict_data] ADD  DEFAULT ((0)) FOR [dict_sort]
GO
ALTER TABLE [dbo].[sys_dict_data] ADD  DEFAULT (N'N') FOR [is_default]
GO
ALTER TABLE [dbo].[sys_dict_data] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_dict_type] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_job] ADD  DEFAULT (N'3') FOR [misfire_policy]
GO
ALTER TABLE [dbo].[sys_job] ADD  DEFAULT (N'1') FOR [concurrent]
GO
ALTER TABLE [dbo].[sys_job] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_job_log] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_logininfor] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT ((0)) FOR [order_num]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT (N'#') FOR [url]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT (N'0') FOR [visible]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT (N'#') FOR [icon]
GO
ALTER TABLE [dbo].[sys_notice] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_oper_log] ADD  DEFAULT ((0)) FOR [business_type]
GO
ALTER TABLE [dbo].[sys_oper_log] ADD  DEFAULT ((0)) FOR [operator_type]
GO
ALTER TABLE [dbo].[sys_oper_log] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[sys_role] ADD  CONSTRAINT [DF__sys_role__data_s__45FE52CB]  DEFAULT (N'1') FOR [data_scope]
GO
ALTER TABLE [dbo].[sys_role] ADD  CONSTRAINT [DF__sys_role__del_fl__46F27704]  DEFAULT (N'0') FOR [del_flag]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT (N'00') FOR [user_type]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT (N'0') FOR [sex]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT (N'0') FOR [status]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT (N'0') FOR [del_flag]
GO
ALTER TABLE [dbo].[sys_user_online] ADD  DEFAULT ((0)) FOR [expire_time]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'config_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'config_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数键名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'config_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'参数键值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'config_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统内置（Y是 N否）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'config_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_config', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父部门id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'祖级列表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'ancestors'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'dept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'order_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'负责人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'leader'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志（0代表存在 2代表删除）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dept', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'dict_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'dict_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典标签' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'dict_label'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典键值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'dict_value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'dict_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'样式属性（其他样式扩展）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'css_class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'表格回显样式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'list_class'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否默认（Y是 N否）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'is_default'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_data', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'dict_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'dict_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'字典类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'dict_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_dict_type', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'job_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'job_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务组名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'job_group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'method_params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'cron执行表达式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'cron_expression'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'计划执行错误策略（1立即执行 2执行一次 3放弃执行）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'misfire_policy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否并发执行（0允许 1禁止）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'concurrent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0正常 1暂停）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务日志ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'job_log_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'job_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务组名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'job_group'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务方法' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'method_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'method_params'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'job_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'执行状态（0正常 1失败）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'异常信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'exception_info'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_job_log', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'info_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'login_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'ipaddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'login_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览器类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'browser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'os'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录状态（0成功 1失败）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提示消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_logininfor', @level2type=N'COLUMN',@level2name=N'login_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'menu_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'menu_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父菜单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'parent_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'order_num'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'打开方式（menuItem页签 menuBlank新窗口）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'target'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单类型（M目录 C菜单 F按钮）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'menu_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单状态（0显示 1隐藏）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'visible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'权限标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'perms'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_menu', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'notice_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'notice_title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告类型（1通知 2公告）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'notice_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'notice_content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告状态（0正常 1关闭）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_notice', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志主键' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'模块标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务类型（0其它 1新增 2修改 3删除）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'business_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'方法名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'method'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类别（0其它 1后台用户 2手机端用户）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'operator_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'dept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求URL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_url'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主机地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'请求参数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_param'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作状态（0正常 1异常）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'错误消息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'error_msg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_oper_log', @level2type=N'COLUMN',@level2name=N'oper_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'post_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'post_code'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'post_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'post_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_post', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'role_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色权限字符串' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'role_key'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'显示顺序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'role_sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'data_scope'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志（0代表存在 2代表删除）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_dept', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_dept', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_menu', @level2type=N'COLUMN',@level2name=N'role_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_role_menu', @level2type=N'COLUMN',@level2name=N'menu_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'dept_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'login_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'user_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户类型（00系统用户）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'user_type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'phonenumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户性别（0男 1女 2未知）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'avatar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'盐加密' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'salt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号状态（0正常 1停用）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'删除标志（0代表存在 2代表删除）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'del_flag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后登陆IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'login_ip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后登陆时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'login_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'create_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'update_by'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'更新时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'update_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user', @level2type=N'COLUMN',@level2name=N'remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户会话id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'sessionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'login_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'部门名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'dept_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'ipaddr'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录地点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'login_location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'浏览器类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'browser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作系统' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'os'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在线状态on_line在线off_line离线' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'session创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'start_timestamp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'session最后访问时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'last_access_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'超时时间，单位为分钟' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_online', @level2type=N'COLUMN',@level2name=N'expire_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_post', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'岗位ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_post', @level2type=N'COLUMN',@level2name=N'post_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_role', @level2type=N'COLUMN',@level2name=N'user_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'sys_user_role', @level2type=N'COLUMN',@level2name=N'role_id'
GO

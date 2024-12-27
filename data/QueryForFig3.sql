/********************************************Query for df_postcnt_per_tag_year.pkl*************************************************/

create table tt_tot_postnum_per_tag as
select /*
		create the tmp table to avoid time out
			: To consider the weight problem, we calculate the total number of question and divide it with each tag
		*/
	   a.id,
       a.cdate,
       a.tot,
       CAST(a.python_yn AS NUMERIC) / a.tot              as python_yn,
       CAST(a.javascript_yn AS NUMERIC) / a.tot          as javascript_yn,
       CAST(a.reactjs_yn AS NUMERIC) / a.tot             as reactjs_yn,
       CAST(a.java_yn AS NUMERIC) / a.tot                as java_yn,
       CAST(a.csharp_yn AS NUMERIC) / a.tot              as csharp_yn , CAST(a.html_yn AS NUMERIC) / a.tot as html_yn,
       CAST(a.r_yn AS NUMERIC) / a.tot                   as r_yn,
       CAST(a.pandas_yn AS NUMERIC) / a.tot              as pandas_yn,
       CAST(a.css_yn AS NUMERIC) / a.tot                 as css_yn,
       CAST(a.flutter_yn AS NUMERIC) / a.tot             as flutter_yn,
       CAST(a.sql_yn AS NUMERIC) / a.tot                 as sql_yn,
       CAST(a.android_yn AS NUMERIC) / a.tot             as android_yn,
       CAST(a.nodejs_yn AS NUMERIC) / a.tot              as nodejs_yn,
       CAST(a.cplusplus_yn AS NUMERIC) / a.tot           as cplusplus_yn,
       CAST(a.typescript_yn AS NUMERIC) / a.tot          as typescript_yn,
       CAST(a.php_yn AS NUMERIC) / a.tot                 as php_yn,
       CAST(a.python_3x_yn AS NUMERIC) / a.tot           as python_3x_yn,
       CAST(a.dataframe_yn AS NUMERIC) / a.tot           as dataframe_yn,
       CAST(a.arrays_yn AS NUMERIC) / a.tot              as arrays_yn,
       CAST(a.angular_yn AS NUMERIC) / a.tot             as angular_yn,
       CAST(a.django_yn AS NUMERIC) / a.tot              as django_yn,
       CAST(a.json_yn AS NUMERIC) / a.tot                as json_yn,
       CAST(a.dart_yn AS NUMERIC) / a.tot                as dart_yn,
       CAST(a.mysql_yn AS NUMERIC) / a.tot               as mysql_yn,
       CAST(a.c_yn AS NUMERIC) / a.tot                   as c_yn,
       CAST(a.excel_yn AS NUMERIC) / a.tot               as excel_yn,
       CAST(a.laravel_yn AS NUMERIC) / a.tot             as laravel_yn,
       CAST(a.swift_yn AS NUMERIC) / a.tot               as swift_yn,
       CAST(a.spring_boot_yn AS NUMERIC) / a.tot         as spring_boot_yn,
       CAST(a.amazon_web_services_yn AS NUMERIC) / a.tot as amazon_web_services_yn,
       CAST(a.react_native_yn AS NUMERIC) / a.tot        as react_native_yn,
       CAST(a.postgresql_yn AS NUMERIC) / a.tot          as postgresql_yn,
       CAST(a.azure_yn AS NUMERIC) / a.tot               as azure_yn,
       CAST(a.kotlin_yn AS NUMERIC) / a.tot              as kotlin_yn,
       CAST(a.docker_yn AS NUMERIC) / a.tot              as docker_yn,
       CAST(a.list_yn AS NUMERIC) / a.tot                as list_yn,
       CAST(a.firebase_yn AS NUMERIC) / a.tot            as firebase_yn,
       CAST(a.ios_yn AS NUMERIC) / a.tot                 as ios_yn,
       CAST(a.sql_server_yn AS NUMERIC) / a.tot          as sql_server_yn,
       CAST(a.jquery_yn AS NUMERIC) / a.tot              as jquery_yn,
       CAST(a.mongodb_yn AS NUMERIC) / a.tot             as mongodb_yn,
       CAST(a.vuejs_yn AS NUMERIC) / a.tot               as vuejs_yn,
       CAST(a.numpy_yn AS NUMERIC) / a.tot               as numpy_yn,
       CAST(a.net_yn AS NUMERIC) / a.tot                 as net_yn,
       CAST(a.vba_yn AS NUMERIC) / a.tot                 as vba_yn,
       CAST(a.regex_yn AS NUMERIC) / a.tot               as regex_yn,
       CAST(a.string_yn AS NUMERIC) / a.tot              as string_yn,
       CAST(a.spring_yn AS NUMERIC) / a.tot              as spring_yn,
       CAST(a.powershell_yn AS NUMERIC) / a.tot          as powershell_yn,
       CAST(a.linux_yn AS NUMERIC) / a.tot               as linux_yn

from (
         select xx.id,
                xx.cdate,
                xx.python_yn,
                xx.javascript_yn,
                xx.reactjs_yn,
                xx.java_yn,
                xx.csharp_yn,
                xx.html_yn,
                xx.r_yn,
                xx.pandas_yn,
                xx.css_yn,
                xx.flutter_yn,
                xx.sql_yn,
                xx.android_yn,
                xx.nodejs_yn,
                xx.cplusplus_yn,
                xx.typescript_yn,
                xx.php_yn,
                xx.python_3x_yn,
                xx.dataframe_yn,
                xx.arrays_yn,
                xx.angular_yn,
                xx.django_yn,
                xx.json_yn,
                xx.dart_yn,
                xx.mysql_yn,
                xx.c_yn,
                xx.excel_yn,
                xx.laravel_yn,
                xx.swift_yn,
                xx.spring_boot_yn,
                xx.amazon_web_services_yn,
                xx.react_native_yn,
                xx.postgresql_yn,
                xx.azure_yn,
                xx.kotlin_yn,
                xx.docker_yn,
                xx.list_yn,
                xx.firebase_yn,
                xx.ios_yn,
                xx.sql_server_yn,
                xx.jquery_yn,
                xx.mongodb_yn,
                xx.vuejs_yn,
                xx.numpy_yn,
                xx.net_yn,
                xx.vba_yn,
                xx.regex_yn,
                xx.string_yn,
                xx.spring_yn,
                xx.powershell_yn,
                xx.linux_yn,
                xx.python_yn + xx.javascript_yn + xx.reactjs_yn + xx.java_yn + xx.csharp_yn + xx.html_yn + xx.r_yn +
                xx.pandas_yn + xx.css_yn + xx.flutter_yn + xx.sql_yn + xx.android_yn +
                xx.nodejs_yn + xx.cplusplus_yn + xx.typescript_yn + xx.php_yn + xx.python_3x_yn + xx.dataframe_yn +
                xx.arrays_yn + xx.angular_yn + xx.django_yn + xx.json_yn + xx.dart_yn + xx.mysql_yn + xx.c_yn +
                xx.excel_yn + xx.laravel_yn + xx.swift_yn + xx.spring_boot_yn + xx.amazon_web_services_yn +
                xx.react_native_yn + xx.postgresql_yn + xx.azure_yn + xx.kotlin_yn + xx.docker_yn + xx.list_yn +
                xx.firebase_yn + xx.ios_yn + xx.sql_server_yn + xx.jquery_yn + xx.mongodb_yn + xx.vuejs_yn +
                xx.numpy_yn + xx.net_yn + xx.vba_yn + xx.regex_yn + xx.string_yn + xx.spring_yn + xx.powershell_yn +
                xx.linux_yn as tot
         from (
                  select id,
                         to_char(creationdate, 'yyyy-mm-dd') as cdate,
                         case
                             when tags like '%<python>%' then 1
                             else 0
                             end                             as python_yn,
                         case
                             when tags like '%<javascript>%' then 1
                             else 0
                             end                             as javascript_yn,
                         case
                             when tags like '%<reactjs>%' then 1
                             else 0
                             end                             as reactjs_yn,
                         case
                             when tags like '%<java>%' then 1
                             else 0
                             end                             as java_yn,
                         case
                             when tags like '%<c#>%' then 1
                             else 0
                             end                             as csharp_yn
                          ,
                         case
                             when tags like '%<html>%' then 1
                             else 0
                             end                             as html_yn,
                         case
                             when tags like '%<r>%' then 1
                             else 0
                             end                             as r_yn,
                         case
                             when tags like '%<pandas>%' then 1
                             else 0
                             end                             as pandas_yn,
                         case
                             when tags like '%<css>%' then 1
                             else 0
                             end                             as css_yn,
                         case
                             when tags like '%<flutter>%' then 1
                             else 0
                             end                             as flutter_yn,
                         case
                             when tags like '%<sql>%' then 1
                             else 0
                             end                             as sql_yn,
                         case
                             when tags like '%<android>%' then 1
                             else 0
                             end                             as android_yn,
                         case
                             when tags like '%<node.js>%' then 1
                             else 0
                             end                             as nodejs_yn,
                         case
                             when tags like '%<c++>%' then 1
                             else 0
                             end                             as cplusplus_yn,
                         case
                             when tags like '%<typescript>%' then 1
                             else 0
                             end                             as typescript_yn,
                         case
                             when tags like '%<php>%' then 1
                             else 0
                             end                             as php_yn,
                         case
                             when tags like '%<python-3.x>%' then 1
                             else 0
                             end                             as python_3x_yn,
                         case
                             when tags like '%<dataframe>%' then 1
                             else 0
                             end                             as dataframe_yn,
                         case
                             when tags like '%<arrays>%' then 1
                             else 0
                             end                             as arrays_yn,
                         case
                             when tags like '%<angular>%' then 1
                             else 0
                             end                             as angular_yn,
                         case
                             when tags like '%<django>%' then 1
                             else 0
                             end                             as django_yn,
                         case
                             when tags like '%<json>%' then 1
                             else 0
                             end                             as json_yn,
                         case
                             when tags like '%<dart>%' then 1
                             else 0
                             end                             as dart_yn,
                         case
                             when tags like '%<mysql>%' then 1
                             else 0
                             end                             as mysql_yn,
                         case
                             when tags like '%<c>%' then 1
                             else 0
                             end                             as c_yn,
                         case
                             when tags like '%<excel>%' then 1
                             else 0
                             end                             as excel_yn,
                         case
                             when tags like '%<laravel>%' then 1
                             else 0
                             end                             as laravel_yn,
                         case
                             when tags like '%<swift>%' then 1
                             else 0
                             end                             as swift_yn,
                         case
                             when tags like '%<spring-boot>%' then 1
                             else 0
                             end                             as spring_boot_yn,
                         case
                             when tags like '%<amazon-web-services>%' then 1
                             else 0
                             end                             as amazon_web_services_yn,
                         case
                             when tags like '%<react-native>%' then 1
                             else 0
                             end                             as react_native_yn,
                         case
                             when tags like '%<postgresql>%' then 1
                             else 0
                             end                             as postgresql_yn,
                         case
                             when tags like '%<azure>%' then 1
                             else 0
                             end                             as azure_yn,
                         case
                             when tags like '%<kotlin>%' then 1
                             else 0
                             end                             as kotlin_yn,
                         case
                             when tags like '%<docker>%' then 1
                             else 0
                             end                             as docker_yn,
                         case
                             when tags like '%<list>%' then 1
                             else 0
                             end                             as list_yn,
                         case
                             when tags like '%<firebase>%' then 1
                             else 0
                             end                             as firebase_yn,
                         case
                             when tags like '%<ios>%' then 1
                             else 0
                             end                             as ios_yn,
                         case
                             when tags like '%<sql-server>%' then 1
                             else 0
                             end                             as sql_server_yn,
                         case
                             when tags like '%<jquery>%' then 1
                             else 0
                             end                             as jquery_yn,
                         case
                             when tags like '%<mongodb>%' then 1
                             else 0
                             end                             as mongodb_yn,
                         case
                             when tags like '%<vue.js>%' then 1
                             else 0
                             end                             as vuejs_yn,
                         case
                             when tags like '%<numpy>%' then 1
                             else 0
                             end                             as numpy_yn,
                         case
                             when tags like '%<.net>%' then 1
                             else 0
                             end                             as net_yn,
                         case
                             when tags like '%<vba>%' then 1
                             else 0
                             end                             as vba_yn,
                         case
                             when tags like '%<regex>%' then 1
                             else 0
                             end                             as regex_yn,
                         case
                             when tags like '%<string>%' then 1
                             else 0
                             end                             as string_yn,
                         case
                             when tags like '%<spring>%' then 1
                             else 0
                             end                             as spring_yn,
                         case
                             when tags like '%<powershell>%' then 1
                             else 0
                             end                             as powershell_yn,
                         case
                             when tags like '%<linux>%' then 1
                             else 0
                             end                             as linux_yn
                  from posts
                  where 1=1 
                    and posttypeid = '1'
                    and (tags like '%<python>%'
                      or tags like '%<javascript>%'
                      or tags like '%<reactjs>%'
                      or tags like '%<java>%'
                      or tags like '%<c#>%'
                      or tags like '%<html>%'
                      or tags like '%<r>%'
                      or tags like '%<pandas>%'
                      or tags like '%<css>%'
                      or tags like '%<flutter>%'
                      or tags like '%<sql>%'
                      or tags like '%<android>%'
                      or tags like '%<node.js>%'
                      or tags like '%<c++>%'
                      or tags like '%<typescript>%'
                      or tags like '%<php>%'
                      or tags like '%<python-3.x>%'
                      or tags like '%<dataframe>%'
                      or tags like '%<arrays>%'
                      or tags like '%<angular>%'
                      or tags like '%<django>%'
                      or tags like '%<json>%'
                      or tags like '%<dart>%'
                      or tags like '%<mysql>%'
                      or tags like '%<c>%'
                      or tags like '%<excel>%'
                      or tags like '%<laravel>%'
                      or tags like '%<swift>%'
                      or tags like '%<spring-boot>%'
                      or tags like '%<amazon-web-services>%'
                      or tags like '%<react-native>%'
                      or tags like '%<postgresql>%'
                      or tags like '%<azure>%'
                      or tags like '%<kotlin>%'
                      or tags like '%<docker>%'
                      or tags like '%<list>%'
                      or tags like '%<firebase>%'
                      or tags like '%<ios>%'
                      or tags like '%<sql-server>%'
                      or tags like '%<jquery>%'
                      or tags like '%<mongodb>%'
                      or tags like '%<vue.js>%'
                      or tags like '%<numpy>%'
                      or tags like '%<.net>%'
                      or tags like '%<vba>%'
                      or tags like '%<regex>%'
                      or tags like '%<string>%'
                      or tags like '%<spring>%'
                      or tags like '%<powershell>%'
                      or tags like '%<linux>%'
                      )) xx
     ) a
;


select /*
			save the result as a pkl file(df_postcnt_per_tag_year.pkl)
		*/
	   x.year, 
       sum(x.python)              as python, 
       sum(x.javascript)          as javascript, 
       sum(x.reactjs)             as reactjs, 
       sum(x.java)                as java, 
       sum(x.csharp)              as csharp, 
       sum(x.html)                as html, 
       sum(x.r)                   as r, 
       sum(x.pandas)              as pandas, 
       sum(x.css)                 as css, 
       sum(x.flutter)             as flutter, 
       sum(x.sql)                 as sql, 
       sum(x.android)             as android, 
       sum(x.nodejs)              as nodejs, 
       sum(x.cplusplus)           as cplusplus, 
       sum(x.typescript)          as typescript, 
       sum(x.php)                 as php, 
       sum(x.python_3x)           as python_3x, 
       sum(x.dataframe)           as dataframe, 
       sum(x.arrays)              as arrays, 
       sum(x.angular)             as angular, 
       sum(x.django)              as django, 
       sum(x.json)                as json, 
       sum(x.dart)                as dart, 
       sum(x.mysql)               as mysql, 
       sum(x.c)                   as c, 
       sum(x.excel)               as excel, 
       sum(x.laravel)             as laravel, 
       sum(x.swift)               as swift, 
       sum(x.spring_boot)         as spring_boot, 
       sum(x.amazon_web_services) as amazon_web_services, 
       sum(x.react_native)        as react_native, 
       sum(x.postgresql)          as postgresql, 
       sum(x.azure)               as azure, 
       sum(x.kotlin)              as kotlin, 
       sum(x.docker)              as docker, 
       sum(x.list)                as list, 
       sum(x.firebase)            as firebase, 
       sum(x.ios)                 as ios, 
       sum(x.sql_server)          as sql_server, 
       sum(x.jquery)              as jquery, 
       sum(x.mongodb)             as mongodb, 
       sum(x.vuejs)               as vuejs, 
       sum(x.numpy)               as numpy, 
       sum(x.net)                 as net, 
       sum(x.vba)                 as vba, 
       sum(x.regex)               as regex, 
       sum(x.string)              as string, 
       sum(x.spring)              as spring, 
       sum(x.powershell)          as powershell, 
       sum(x.linux)               as linux 
from ( 
         select SUBSTRING(cdate, 1, 4) as year, 
                python_yn              as python, 
                javascript_yn          as javascript, 
                reactjs_yn             as reactjs, 
                java_yn                as java, 
                csharp_yn                as csharp, 
                html_yn as html, 
                r_yn                   as r, 
                pandas_yn              as pandas, 
                css_yn                 as css, 
                flutter_yn             as flutter, 
                sql_yn                 as sql, 
                android_yn             as android, 
                nodejs_yn              as nodejs, 
                cplusplus_yn           as cplusplus, 
                typescript_yn          as typescript, 
                php_yn                 as php, 
                python_3x_yn           as python_3x, 
                dataframe_yn           as dataframe, 
                arrays_yn              as arrays, 
                angular_yn             as angular, 
                django_yn              as django, 
                json_yn                as json, 
                dart_yn                as dart, 
                mysql_yn               as mysql, 
                c_yn                   as c, 
                excel_yn               as excel, 
                laravel_yn             as laravel, 
                swift_yn               as swift, 
                spring_boot_yn         as spring_boot, 
                amazon_web_services_yn as amazon_web_services, 
                react_native_yn        as react_native, 
                postgresql_yn          as postgresql, 
                azure_yn               as azure, 
                kotlin_yn              as kotlin, 
                docker_yn              as docker, 
                list_yn                as list, 
                firebase_yn            as firebase, 
                ios_yn                 as ios, 
                sql_server_yn          as sql_server, 
                jquery_yn              as jquery, 
                mongodb_yn             as mongodb, 
                vuejs_yn               as vuejs, 
                numpy_yn               as numpy, 
                net_yn                 as net, 
                vba_yn                 as vba, 
                regex_yn               as regex, 
                string_yn              as string, 
                spring_yn              as spring, 
                powershell_yn          as powershell, 
                linux_yn               as linux 
         from tt_tot_postnum_per_tag 
     ) x 
group by x.year 
;




/********************************************Query for df_postcnt_per_tag_year_01.pkl*************************************************/


create table tt_postnum_per_tag_01 as
select/*
		create the tmp table to avoid time out
			: T To compare with the weighted one, we extract the unweighted data 
		*/
	x.cdate ,
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.csharp_yn) as csharp,
	sum(x.html_yn) as html,
	sum(x.r_yn) as r,
	sum(x.pandas_yn) as pandas,
	sum(x.css_yn) as css,
	sum(x.flutter_yn) as flutter,
	sum(x.sql_yn) as sql,
	sum(x.android_yn) as android,
	sum(x.nodejs_yn) as nodejs,
	sum(x.cplusplus_yn) as cplusplus,
	sum(x.typescript_yn) as typescript,
	sum(x.php_yn) as php,
	sum(x.python_3x_yn) as python_3x,
	sum(x.dataframe_yn) as dataframe,
	sum(x.arrays_yn) as arrays,
	sum(x.angular_yn) as angular,
	sum(x.django_yn) as django,
	sum(x.json_yn) as json,
	sum(x.dart_yn) as dart,
	sum(x.mysql_yn) as mysql,
	sum(x.c_yn) as c,
	sum(x.excel_yn) as excel,
	sum(x.laravel_yn) as laravel,
	sum(x.swift_yn) as swift,
	sum(x.spring_boot_yn) as spring_boot,
	sum(x.amazon_web_services_yn) as amazon_web_services,
	sum(x.react_native_yn) as react_native,
	sum(x.postgresql_yn) as postgresql,
	sum(x.azure_yn) as azure,
	sum(x.kotlin_yn) as kotlin,
	sum(x.docker_yn) as docker,
	sum(x.list_yn) as list,
	sum(x.firebase_yn) as firebase,
	sum(x.ios_yn) as ios,
	sum(x.sql_server_yn) as sql_server,
	sum(x.jquery_yn) as jquery,
	sum(x.mongodb_yn) as mongodb,
	sum(x.vuejs_yn) as vuejs,
	sum(x.numpy_yn) as numpy,
	sum(x.net_yn) as net,
	sum(x.vba_yn) as vba,
	sum(x.regex_yn) as regex,
	sum(x.string_yn) as string,
	sum(x.spring_yn) as spring,
	sum(x.powershell_yn) as powershell,
	sum(x.linux_yn) as linux
from
	(
	select
		id ,
		to_char(creationdate, 'yyyy-mm-dd') as cdate, 
		case
			when tags like '%<python>%' then 1
			else 0
		end as python_yn,
		case
			when tags like '%<javascript>%' then 1
			else 0
		end as javascript_yn,
		case
			when tags like '%<reactjs>%' then 1
			else 0
		end as reactjs_yn,
		case
			when tags like '%<java>%' then 1
			else 0
		end as java_yn,
		case
			when tags like '%<c#>%' then 1
			else 0
		end as csharp_yn,
		case
			when tags like '%<html>%' then 1
			else 0
		end as html_yn,
		case
			when tags like '%<r>%' then 1
			else 0
		end as r_yn,
		case
			when tags like '%<pandas>%' then 1
			else 0
		end as pandas_yn,
		case
			when tags like '%<css>%' then 1
			else 0
		end as css_yn,
		case
			when tags like '%<flutter>%' then 1
			else 0
		end as flutter_yn,
		case
			when tags like '%<sql>%' then 1
			else 0
		end as sql_yn,
		case
			when tags like '%<android>%' then 1
			else 0
		end as android_yn,
		case
			when tags like '%<node.js>%' then 1
			else 0
		end as nodejs_yn,
		case
			when tags like '%<c++>%' then 1
			else 0
		end as cplusplus_yn,
		case
			when tags like '%<typescript>%' then 1
			else 0
		end as typescript_yn,
		case
			when tags like '%<php>%' then 1
			else 0
		end as php_yn,
		case
			when tags like '%<python-3.x>%' then 1
			else 0
		end as python_3x_yn,
		case
			when tags like '%<dataframe>%' then 1
			else 0
		end as dataframe_yn,
		case
			when tags like '%<arrays>%' then 1
			else 0
		end as arrays_yn,
		case
			when tags like '%<angular>%' then 1
			else 0
		end as angular_yn,
		case
			when tags like '%<django>%' then 1
			else 0
		end as django_yn,
		case
			when tags like '%<json>%' then 1
			else 0
		end as json_yn,
		case
			when tags like '%<dart>%' then 1
			else 0
		end as dart_yn,
		case
			when tags like '%<mysql>%' then 1
			else 0
		end as mysql_yn,
		case
			when tags like '%<c>%' then 1
			else 0
		end as c_yn,
		case
			when tags like '%<excel>%' then 1
			else 0
		end as excel_yn,
		case
			when tags like '%<laravel>%' then 1
			else 0
		end as laravel_yn,
		case
			when tags like '%<swift>%' then 1
			else 0
		end as swift_yn,
		case
			when tags like '%<spring-boot>%' then 1
			else 0
		end as spring_boot_yn,
		case
			when tags like '%<amazon-web-services>%' then 1
			else 0
		end as amazon_web_services_yn,
		case
			when tags like '%<react-native>%' then 1
			else 0
		end as react_native_yn,
		case
			when tags like '%<postgresql>%' then 1
			else 0
		end as postgresql_yn,
		case
			when tags like '%<azure>%' then 1
			else 0
		end as azure_yn,
		case
			when tags like '%<kotlin>%' then 1
			else 0
		end as kotlin_yn,
		case
			when tags like '%<docker>%' then 1
			else 0
		end as docker_yn,
		case
			when tags like '%<list>%' then 1
			else 0
		end as list_yn,
		case
			when tags like '%<firebase>%' then 1
			else 0
		end as firebase_yn,
		case
			when tags like '%<ios>%' then 1
			else 0
		end as ios_yn,
		case
			when tags like '%<sql-server>%' then 1
			else 0
		end as sql_server_yn,
		case
			when tags like '%<jquery>%' then 1
			else 0
		end as jquery_yn,
		case
			when tags like '%<mongodb>%' then 1
			else 0
		end as mongodb_yn,
		case
			when tags like '%<vue.js>%' then 1
			else 0
		end as vuejs_yn,
		case
			when tags like '%<numpy>%' then 1
			else 0
		end as numpy_yn,
		case
			when tags like '%<.net>%' then 1
			else 0
		end as net_yn,
		case
			when tags like '%<vba>%' then 1
			else 0
		end as vba_yn,
		case
			when tags like '%<regex>%' then 1
			else 0
		end as regex_yn,
		case
			when tags like '%<string>%' then 1
			else 0
		end as string_yn,
		case
			when tags like '%<spring>%' then 1
			else 0
		end as spring_yn,
		case
			when tags like '%<powershell>%' then 1
			else 0
		end as powershell_yn,
		case
			when tags like '%<linux>%' then 1
			else 0
		end as linux_yn
	from
		posts
	where
		and posttypeid = '1'
   and (tags like '%<python>%'
			or tags like '%<javascript>%'
			or tags like '%<reactjs>%'
			or tags like '%<java>%'
			or tags like '%<c#>%'
			or tags like '%<html>%'
			or tags like '%<r>%'
			or tags like '%<pandas>%'
			or tags like '%<css>%'
			or tags like '%<flutter>%'
			or tags like '%<sql>%'
			or tags like '%<android>%'
			or tags like '%<node.js>%'
			or tags like '%<c++>%'
			or tags like '%<typescript>%'
			or tags like '%<php>%'
			or tags like '%<python-3.x>%'
			or tags like '%<dataframe>%'
			or tags like '%<arrays>%'
			or tags like '%<angular>%'
			or tags like '%<django>%'
			or tags like '%<json>%'
			or tags like '%<dart>%'
			or tags like '%<mysql>%'
			or tags like '%<c>%'
			or tags like '%<excel>%'
			or tags like '%<laravel>%'
			or tags like '%<swift>%'
			or tags like '%<spring-boot>%'
			or tags like '%<amazon-web-services>%'
			or tags like '%<react-native>%'
			or tags like '%<postgresql>%'
			or tags like '%<azure>%'
			or tags like '%<kotlin>%'
			or tags like '%<docker>%'
			or tags like '%<list>%'
			or tags like '%<firebase>%'
			or tags like '%<ios>%'
			or tags like '%<sql-server>%'
			or tags like '%<jquery>%'
			or tags like '%<mongodb>%'
			or tags like '%<vue.js>%'
			or tags like '%<numpy>%'
			or tags like '%<.net>%'
			or tags like '%<vba>%'
			or tags like '%<regex>%'
			or tags like '%<string>%'
			or tags like '%<spring>%'
			or tags like '%<powershell>%'
			or tags like '%<linux>%'
   ) ) x
group by
	x.cdate
 ;

create table tt_tot_postnum_per_tag_01 as 
 select x.id,
        x.cdate,
     	sum(x.python_yn) as python,
		sum(x.javascript_yn) as javascript,
		sum(x.reactjs_yn) as reactjs,
		sum(x.java_yn) as java,
		sum(x.csharp_yn) as csharp,
		sum(x.html_yn) as html,
		sum(x.r_yn) as r,
		sum(x.pandas_yn) as pandas,
		sum(x.css_yn) as css,
		sum(x.flutter_yn) as flutter,
		sum(x.sql_yn) as sql,
		sum(x.android_yn) as android,
		sum(x.nodejs_yn) as nodejs,
		sum(x.cplusplus_yn) as cplusplus,
		sum(x.typescript_yn) as typescript,
		sum(x.php_yn) as php,
		sum(x.python_3x_yn) as python_3x,
		sum(x.dataframe_yn) as dataframe,
		sum(x.arrays_yn) as arrays,
		sum(x.angular_yn) as angular,
		sum(x.django_yn) as django,
		sum(x.json_yn) as json,
		sum(x.dart_yn) as dart,
		sum(x.mysql_yn) as mysql,
		sum(x.c_yn) as c,
		sum(x.excel_yn) as excel,
		sum(x.laravel_yn) as laravel,
		sum(x.swift_yn) as swift,
		sum(x.spring_boot_yn) as spring_boot,
		sum(x.amazon_web_services_yn) as amazon_web_services,
		sum(x.react_native_yn) as react_native,
		sum(x.postgresql_yn) as postgresql,
		sum(x.azure_yn) as azure,
		sum(x.kotlin_yn) as kotlin,
		sum(x.docker_yn) as docker,
		sum(x.list_yn) as list,
		sum(x.firebase_yn) as firebase,
		sum(x.ios_yn) as ios,
		sum(x.sql_server_yn) as sql_server,
		sum(x.jquery_yn) as jquery,
		sum(x.mongodb_yn) as mongodb,
		sum(x.vuejs_yn) as vuejs,
		sum(x.numpy_yn) as numpy,
		sum(x.net_yn) as net,
		sum(x.vba_yn) as vba,
		sum(x.regex_yn) as regex,
		sum(x.string_yn) as string,
		sum(x.spring_yn) as spring,
		sum(x.powershell_yn) as powershell,
		sum(x.linux_yn) as linux
         from (
                  select id,
                         to_char(creationdate, 'yyyy-mm-dd') as cdate,
                         case
                             when tags like '%<python>%' then 1
                             else 0
                             end                             as python_yn,
                         case
                             when tags like '%<javascript>%' then 1
                             else 0
                             end                             as javascript_yn,
                         case
                             when tags like '%<reactjs>%' then 1
                             else 0
                             end                             as reactjs_yn,
                         case
                             when tags like '%<java>%' then 1
                             else 0
                             end                             as java_yn,
                         case
                             when tags like '%<c#>%' then 1
                             else 0
                             end                             as csharp_yn
                          ,
                         case
                             when tags like '%<html>%' then 1
                             else 0
                             end                             as html_yn,
                         case
                             when tags like '%<r>%' then 1
                             else 0
                             end                             as r_yn,
                         case
                             when tags like '%<pandas>%' then 1
                             else 0
                             end                             as pandas_yn,
                         case
                             when tags like '%<css>%' then 1
                             else 0
                             end                             as css_yn,
                         case
                             when tags like '%<flutter>%' then 1
                             else 0
                             end                             as flutter_yn,
                         case
                             when tags like '%<sql>%' then 1
                             else 0
                             end                             as sql_yn,
                         case
                             when tags like '%<android>%' then 1
                             else 0
                             end                             as android_yn,
                         case
                             when tags like '%<node.js>%' then 1
                             else 0
                             end                             as nodejs_yn,
                         case
                             when tags like '%<c++>%' then 1
                             else 0
                             end                             as cplusplus_yn,
                         case
                             when tags like '%<typescript>%' then 1
                             else 0
                             end                             as typescript_yn,
                         case
                             when tags like '%<php>%' then 1
                             else 0
                             end                             as php_yn,
                         case
                             when tags like '%<python-3.x>%' then 1
                             else 0
                             end                             as python_3x_yn,
                         case
                             when tags like '%<dataframe>%' then 1
                             else 0
                             end                             as dataframe_yn,
                         case
                             when tags like '%<arrays>%' then 1
                             else 0
                             end                             as arrays_yn,
                         case
                             when tags like '%<angular>%' then 1
                             else 0
                             end                             as angular_yn,
                         case
                             when tags like '%<django>%' then 1
                             else 0
                             end                             as django_yn,
                         case
                             when tags like '%<json>%' then 1
                             else 0
                             end                             as json_yn,
                         case
                             when tags like '%<dart>%' then 1
                             else 0
                             end                             as dart_yn,
                         case
                             when tags like '%<mysql>%' then 1
                             else 0
                             end                             as mysql_yn,
                         case
                             when tags like '%<c>%' then 1
                             else 0
                             end                             as c_yn,
                         case
                             when tags like '%<excel>%' then 1
                             else 0
                             end                             as excel_yn,
                         case
                             when tags like '%<laravel>%' then 1
                             else 0
                             end                             as laravel_yn,
                         case
                             when tags like '%<swift>%' then 1
                             else 0
                             end                             as swift_yn,
                         case
                             when tags like '%<spring-boot>%' then 1
                             else 0
                             end                             as spring_boot_yn,
                         case
                             when tags like '%<amazon-web-services>%' then 1
                             else 0
                             end                             as amazon_web_services_yn,
                         case
                             when tags like '%<react-native>%' then 1
                             else 0
                             end                             as react_native_yn,
                         case
                             when tags like '%<postgresql>%' then 1
                             else 0
                             end                             as postgresql_yn,
                         case
                             when tags like '%<azure>%' then 1
                             else 0
                             end                             as azure_yn,
                         case
                             when tags like '%<kotlin>%' then 1
                             else 0
                             end                             as kotlin_yn,
                         case
                             when tags like '%<docker>%' then 1
                             else 0
                             end                             as docker_yn,
                         case
                             when tags like '%<list>%' then 1
                             else 0
                             end                             as list_yn,
                         case
                             when tags like '%<firebase>%' then 1
                             else 0
                             end                             as firebase_yn,
                         case
                             when tags like '%<ios>%' then 1
                             else 0
                             end                             as ios_yn,
                         case
                             when tags like '%<sql-server>%' then 1
                             else 0
                             end                             as sql_server_yn,
                         case
                             when tags like '%<jquery>%' then 1
                             else 0
                             end                             as jquery_yn,
                         case
                             when tags like '%<mongodb>%' then 1
                             else 0
                             end                             as mongodb_yn,
                         case
                             when tags like '%<vue.js>%' then 1
                             else 0
                             end                             as vuejs_yn,
                         case
                             when tags like '%<numpy>%' then 1
                             else 0
                             end                             as numpy_yn,
                         case
                             when tags like '%<.net>%' then 1
                             else 0
                             end                             as net_yn,
                         case
                             when tags like '%<vba>%' then 1
                             else 0
                             end                             as vba_yn,
                         case
                             when tags like '%<regex>%' then 1
                             else 0
                             end                             as regex_yn,
                         case
                             when tags like '%<string>%' then 1
                             else 0
                             end                             as string_yn,
                         case
                             when tags like '%<spring>%' then 1
                             else 0
                             end                             as spring_yn,
                         case
                             when tags like '%<powershell>%' then 1
                             else 0
                             end                             as powershell_yn,
                         case
                             when tags like '%<linux>%' then 1
                             else 0
                             end                             as linux_yn
                  from posts
                  where 1=1 
                    and posttypeid = '1'
                    and (tags like '%<python>%'
                      or tags like '%<javascript>%'
                      or tags like '%<reactjs>%'
                      or tags like '%<java>%'
                      or tags like '%<c#>%'
                      or tags like '%<html>%'
                      or tags like '%<r>%'
                      or tags like '%<pandas>%'
                      or tags like '%<css>%'
                      or tags like '%<flutter>%'
                      or tags like '%<sql>%'
                      or tags like '%<android>%'
                      or tags like '%<node.js>%'
                      or tags like '%<c++>%'
                      or tags like '%<typescript>%'
                      or tags like '%<php>%'
                      or tags like '%<python-3.x>%'
                      or tags like '%<dataframe>%'
                      or tags like '%<arrays>%'
                      or tags like '%<angular>%'
                      or tags like '%<django>%'
                      or tags like '%<json>%'
                      or tags like '%<dart>%'
                      or tags like '%<mysql>%'
                      or tags like '%<c>%'
                      or tags like '%<excel>%'
                      or tags like '%<laravel>%'
                      or tags like '%<swift>%'
                      or tags like '%<spring-boot>%'
                      or tags like '%<amazon-web-services>%'
                      or tags like '%<react-native>%'
                      or tags like '%<postgresql>%'
                      or tags like '%<azure>%'
                      or tags like '%<kotlin>%'
                      or tags like '%<docker>%'
                      or tags like '%<list>%'
                      or tags like '%<firebase>%'
                      or tags like '%<ios>%'
                      or tags like '%<sql-server>%'
                      or tags like '%<jquery>%'
                      or tags like '%<mongodb>%'
                      or tags like '%<vue.js>%'
                      or tags like '%<numpy>%'
                      or tags like '%<.net>%'
                      or tags like '%<vba>%'
                      or tags like '%<regex>%'
                      or tags like '%<string>%'
                      or tags like '%<spring>%'
                      or tags like '%<powershell>%'
                      or tags like '%<linux>%'
                      )) x
group by x.id,
        x.cdate
    
;
select /*
			save the result as a pkl file(df_postcnt_per_tag_year_01.pkl)
		*/
	   x.year, 
       sum(x.python)              as python, 
       sum(x.javascript)          as javascript, 
       sum(x.reactjs)             as reactjs, 
       sum(x.java)                as java, 
       sum(x.csharp)              as csharp, 
       sum(x.html)                as html, 
       sum(x.r)                   as r, 
       sum(x.pandas)              as pandas, 
       sum(x.css)                 as css, 
       sum(x.flutter)             as flutter, 
       sum(x.sql)                 as sql, 
       sum(x.android)             as android, 
       sum(x.nodejs)              as nodejs, 
       sum(x.cplusplus)           as cplusplus, 
       sum(x.typescript)          as typescript, 
       sum(x.php)                 as php, 
       sum(x.python_3x)           as python_3x, 
       sum(x.dataframe)           as dataframe, 
       sum(x.arrays)              as arrays, 
       sum(x.angular)             as angular, 
       sum(x.django)              as django, 
       sum(x.json)                as json, 
       sum(x.dart)                as dart, 
       sum(x.mysql)               as mysql, 
       sum(x.c)                   as c, 
       sum(x.excel)               as excel, 
       sum(x.laravel)             as laravel, 
       sum(x.swift)               as swift, 
       sum(x.spring_boot)         as spring_boot, 
       sum(x.amazon_web_services) as amazon_web_services, 
       sum(x.react_native)        as react_native, 
       sum(x.postgresql)          as postgresql, 
       sum(x.azure)               as azure, 
       sum(x.kotlin)              as kotlin, 
       sum(x.docker)              as docker, 
       sum(x.list)                as list, 
       sum(x.firebase)            as firebase, 
       sum(x.ios)                 as ios, 
       sum(x.sql_server)          as sql_server, 
       sum(x.jquery)              as jquery, 
       sum(x.mongodb)             as mongodb, 
       sum(x.vuejs)               as vuejs, 
       sum(x.numpy)               as numpy, 
       sum(x.net)                 as net, 
       sum(x.vba)                 as vba, 
       sum(x.regex)               as regex, 
       sum(x.string)              as string, 
       sum(x.spring)              as spring, 
       sum(x.powershell)          as powershell, 
       sum(x.linux)               as linux 
from ( 
         select SUBSTRING(cdate, 1, 4) as year, 
                python              as python, 
                javascript          as javascript, 
                reactjs             as reactjs, 
                java                as java, 
                csharp                as csharp, 
                html as html, 
                r                   as r, 
                pandas              as pandas, 
                css                 as css, 
                flutter             as flutter, 
                sql                 as sql, 
                android             as android, 
                nodejs              as nodejs, 
                cplusplus           as cplusplus, 
                typescript          as typescript, 
                php                 as php, 
                python_3x           as python_3x, 
                dataframe           as dataframe, 
                arrays              as arrays, 
                angular             as angular, 
                django              as django, 
                json                as json, 
                dart                as dart, 
                mysql               as mysql, 
                c                   as c, 
                excel               as excel, 
                laravel             as laravel, 
                swift               as swift, 
                spring_boot         as spring_boot, 
                amazon_web_services as amazon_web_services, 
                react_native        as react_native, 
                postgresql          as postgresql, 
                azure               as azure, 
                kotlin              as kotlin, 
                docker              as docker, 
                list                as list, 
                firebase            as firebase, 
                ios                 as ios, 
                sql_server          as sql_server, 
                jquery              as jquery, 
                mongodb             as mongodb, 
                vuejs               as vuejs, 
                numpy               as numpy, 
                net                 as net, 
                vba                 as vba, 
                regex               as regex, 
                string              as string, 
                spring              as spring, 
                powershell          as powershell, 
                linux               as linux 
         from tt_tot_postnum_per_tag_01 
     ) x 
group by x.year 
; 


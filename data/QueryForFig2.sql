/********************************************Query for Condition1*************************************************/
select
	/*
		treat_X_X_condition1
	    	: extract the number of surviving & deleted questions
        	: To account for the snapshot problem, we only consider questions as deleted if the deletion date is before sysdate('2024-10-01')	
	*/
	x.cdate ,
	x.del_yn, 
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.c#_yn) as c#,
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
		cast(creationdate as date) as cdate, 
		case
        when deletiondate is not null 
			then 1
			else 0
		end as del_yn,
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
		end as c#_yn,
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
		postswithdeleted
	where
		-- To avoid the time out from the stack exchange data explorer, we devide the time frame as below
		-- treat_0_1_condition1.csv
		cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat_0_2_condition1.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition1.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition1.csv
		--cast(creationdate as date) between '2023-01-01' and '2023-03-14'
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
	x.cdate ,
	x.del_yn
 ;

/********************************************Query for Condition2*************************************************/
select
	/*
		treat_X_X_condition2
	    	: extract the number of surviving & deleted questions
        	: To account for the snapshot problem, we only consider questions as deleted if the deletion date is before '2023-12-03'
    */
	x.cdate ,
	x.del_yn, 
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.c#_yn) as c#,
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
		cast(creationdate as date) as cdate, 
		case
        when cast(deletiondate as date) <= '2023-12-03'
			then 1
			else 0
		end as del_yn,
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
		end as c#_yn,
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
		postswithdeleted
	where
		-- To avoid the time out from the stack exchange data explorer, we devide the time frame as below
		-- treat_0_1_condition2.csv
		cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat_0_2_condition2.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_1_1_condition2.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition2.csv
		--cast(creationdate as date) between '2023-01-01' and '2023-03-14'
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
	x.cdate ,
	x.del_yn
 ;

 /********************************************Query for Condition3*************************************************/
select
	/* 
        query for treat_X_X_condition3.csv
            : extract the number of surviving & deleted questions
            : To account for online exposure, we only consider questions to be deleted if they are deleted within one year of posting 
    */
	x.cdate ,
	x.del_yn, 
	sum(x.python_yn) as python,
	sum(x.javascript_yn) as javascript,
	sum(x.reactjs_yn) as reactjs,
	sum(x.java_yn) as java,
	sum(x.c#_yn) as c#,
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
		cast(creationdate as date) as cdate, 
		case
			when datediff(day , creationdate, deletiondate) <= 365 
			then 1
			else 0
		end as del_yn,
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
		end as c#_yn,
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
		postswithdeleted
	where
        -- To avoid the time out from the stack exchange data explorer, we divide the time frame as below
		-- treat_0_1_condition3.csv
		cast(creationdate as date) between '2021-10-06' and '2021-12-31'
		-- treat 0_2_condition3.csv
		--cast(creationdate as date) between '2022-01-01' and '2022-03-15'
		-- treat_0_3_condition3.csv
		-- cast(creationdate as date) between '2022-03-16' and '2022-05-31'
		-- treat_0_4_condition3.csv
		-- cast(creationdate as date) between '2022-06-01' and '2022-06-28'
		-- treat_1_1_condition3.csv
		--cast(creationdate as date) between '2022-10-05' and '2022-12-31'
		-- treat_1_2_condition3.csv
		--cast(creationdate as date) between '2023-01-01' and '2023-03-14'
		-- treat_1_3_condition3.csv
		-- cast(creationdate as date) between '2023-03-15' and '2023-05-31'
        -- treat_1_4_condition3.csv
		-- cast(creationdate as date) between '2023-06-01' and '2023-06-27'
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
	x.cdate ,
	x.del_yn
 ;
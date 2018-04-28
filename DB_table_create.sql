create Database kwik;
commit;

use kwik;
commit;

create table machine_details
(machine_id int NOT NULL AUTO_INCREMENT,
machine_name varchar(50),
location varchar(50),
primary_connection varchar(20),
secondary_connection varchar(20),
primary_carrier varchar(20),
secondary_carrier varchar(20),
wifi_lan varchar(20),
sim_no varchar(30),
ssid varchar(30),
bssid varchar(30),
jarversion varchar(30),
watchdogversion varchar(30),
date_time DateTime,
PRIMARY key (machine_id));
commit;

create table checklist
(id int NOT NULL AUTO_INCREMENT,
machine_id varchar(50),
proximitycheck_status varchar(10),
speedcheck_status varchar(10),
videocheck_status varchar(10),
wificheck_status varchar(10),
machinecheck_status varchar(10),
noofpicheck varchar(10),
carriercheck_status varchar(10),
healthcheck_status varchar(10),
bluetoothcheck_status varchar(10),
date_time DateTime,
PRIMARY key (id));
commit;

create table healthchecklist
(id int NOT NULL AUTO_INCREMENT,
machine_id varchar(50),
diskspace varchar(20),
memory varchar(20),
ram varchar(20),
cpu_util varchar(10),
status varchar(10),
date_time DateTime,
PRIMARY key (id));
commit;

create table errordetails
(id int NOT NULL AUTO_INCREMENT,
machine_id varchar(50),
error_logs varchar(500),
date_time DateTime,
PRIMARY key (id));
commit;

create 
table prox_check
(id int NOT NULL AUTO_INCREMENT,
machine_id varchar(50),
location varchar(100),
macid varchar(30),
status varchar(10),
update_date DateTime,
PRIMARY key (id));
commit;

create 
table speed_check
(id int NOT NULL AUTO_INCREMENT,
machine_id varchar(50),
download_speed varchar(10),
upload_speed varchar(10),
status varchar(10),
update_date DateTime,
PRIMARY key (id));
commit;


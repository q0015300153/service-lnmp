service-lnmp
============

上方為中文說明  
Chinese description above

下方英文說明為 Google 翻譯  
The English description below is Google Translate


使用 Docker-compose 建立的 NginX + PHP + MariaDB  
供開發使用  
建議搭配 i1-new-php 一起使用


一般用法  
先複製檔案  
	git clone https://github.com/q0015300153/service-lnmp.git

執行初始化，此步驟會建立 web 站點資料夾與 MariaDB 資料庫資料夾  
	bash init.sh

然後執行 docker-compose  
	docker-compose up

搭配 i1-new-php 專案的使用方法，[請參閱](https://github.com/q0015300153/i1-new-php)


結構說明  
資料夾 ./nginx/alias 用於存放 Laravel 專案站點的設定檔

- - -

NginX + PHP + MariaDB created with Docker-compose  
For development use  
Recommended for use with i1-new-php  

General usage  
Copy the file first  
	git clone https://github.com/q0015300153/service-lnmp.git

Perform initialization, this step will create a web site folder and a MariaDB repository folder  
	bash init.sh

Then execute docker-compose  
	docker-compose up

How to use the i1-new-php project，[See](https://github.com/q0015300153/i1-new-php)


Structure description  
Folder ./nginx/alias is used to store the profile of the Laravel project site
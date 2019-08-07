service-lnmp
===

上方為中文說明  
Chinese description above

下方英文說明為 Google 翻譯  
The English description below is Google Translate  

專案說明
---
使用 Docker-compose 建立的 NginX + PHP + MariaDB  
供開發使用  
建議搭配 i1-new-php 一起使用  

一般用法  
---
先複製檔案  
```bash
git clone https://github.com/q0015300153/service-lnmp.git
```

執行初始化，此步驟會建立 web 站點資料夾與 MariaDB 資料庫資料夾  
```bash
bash init.sh
```

然後執行 docker-compose  
```bash
docker-compose up
```

>預設會在上一層資料夾建立以下資料夾  
>>`../database/web-mysql` => 存放 MariaDB 資料庫  
>>`../projects`           => 存放網頁程式碼  
>>`../projects/index.php` => 自動建立的首頁  

可以開啟 http://localhost/  
來查看首頁 `phpinfo();`

### 搭配 i1-new-php 專案的使用方法，[請參閱](https://github.com/q0015300153/i1-new-php)  

結構說明  
---
資料夾 ./nginx/alias 用於存放 Laravel 專案站點的設定檔

- - -

Project description
---
NginX + PHP + MariaDB created with Docker-compose  
For development use  
Recommended for use with i1-new-php  

General usage  
---
Copy the file first  
```git
git clone https://github.com/q0015300153/service-lnmp.git
```

Perform initialization, this step will create a web site folder and a MariaDB repository folder  
```bash
bash init.sh
```

Then execute docker-compose  
```bash
docker-compose up
```

>The default will create the following folder in the previous folder  
>>../database/web-mysql => store MariaDB database  
>>../projects => store webpage code  
>>../projects/index.php => Automatically created homepage  

Can open http://localhost/  
To view the home page `phpinfo();`

### How to use the i1-new-php project，[See](https://github.com/q0015300153/i1-new-php)  

Structure description  
---
Folder ./nginx/alias is used to store the profile of the Laravel project site  

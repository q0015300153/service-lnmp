# tw: 載入 Set-PsEnv
# en: Load Set-PsEnv
Import-module ".\Set-PsEnv.psm1" -Force
Set-PsEnv

# tw: 建立資料夾
# en: Create folder
$parse = @(
    @("WEB_PATH",    $Env:WEB_PATH),
    @("WEB_DATA",    $Env:WEB_DATA),
    @("NGINX_ALIAS", $Env:NGINX_ALIAS),
    @("NGINX_LOG",   $Env:NGINX_LOG)
)

$path = $(pwd)
foreach ($param in $parse) {
    $fullpath = -join($path, "/", $param[1])
    if ((Test-Path $fullpath)) {
        continue
    }

    New-Item $fullpath -ItemType "directory"

    # tw: 建立 index.php
    # en: Create index.php
    if ($param[0] -eq "WEB_PATH") {
        $savepath = -join($fullpath, "/index.php")
        New-Item $savepath -ItemType "file"

        "<!DOCTYPE html>"                  | Out-File $savepath
        "<html>"                           | Out-File -Append $savepath
        "<head>"                           | Out-File -Append $savepath
        "    <title>Hello World!</title>"  | Out-File -Append $savepath
        "</head>"                          | Out-File -Append $savepath
        "<body>"                           | Out-File -Append $savepath
        "    <?php phpinfo(); ?>"          | Out-File -Append $savepath
        "</body>"                          | Out-File -Append $savepath
        "</html>"                          | Out-File -Append $savepath
    }

    # tw: 複製 nginx/alias/default 設定檔
    # en: Copy nginx/alias/default setting file
    if ($param[0] -eq "NGINX_ALIAS") {
        $savepath = -join($fullpath, "/default")
        Copy-Item "./nginx/alias/default" $savepath
    }
}
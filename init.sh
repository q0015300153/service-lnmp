#!/usr/bin/env bash

# tw: 載入 dotenv
# en: Load dotenv
. $(dirname "$0")/dotenv

# tw: 建立資料夾
# en: Create folder
.env -f ./.env parse WEB_PATH WEB_DATA
for path in "${REPLY[@]}"; do
	IFS='=' read -ra param <<< "$path"
	if ! [[ -n "${param[1]}" ]]; then
		continue
	fi

	if ! [ -d "${param[1]}" ]; then
		mkdir -p "$(dirname "$0")/${param[1]}"
	fi
done

#!/bin/sh

file_name="DB.txt"
query="$1"

if [-z"$query"];then
	echo "검색할 이름을 입력 해주세요"
	exit 1
fi

if [!-f"$file_name"];then
	echo "$file name 파일이 존재하지 않습니다"
	exit
fi

while IFS=read-r line; do
  if[["$line"==*"query"*]];then
     echo "$line"
     fi
done < "file_name'

exit 0

#!/bin/bash

echo "첫 번째 숫자를 입력하세요:"
read num1

echo "두 번째 숫자를 입력하세요:"
read num2

echo "연산자를 입력하세요 (+ 또는 -):"
read operator

if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
    echo "결과: $result"
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
    echo "결과: $result"
else
    echo "지원하지 않는 연산자입니다. + 또는 -만 사용할 수 있습니다."
fi


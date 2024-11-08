#!/bin/bash

echo "몸무게를 입력하세요 (kg):"
read weight

echo "키를 입력하세요 (cm):"
read height_cm

height_m=$(echo "scale=2; $height_cm / 100" | bc)

bmi=$(echo "scale=2; $weight / ($height_m * $height_m)" | bc)

echo "당신의 BMI는 $bmi 입니다."

if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5" | bc -l) )) && (( $(echo "$bmi < 23" | bc -l) )); then
    echo "정상 체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
    echo "과체중입니다."
fi


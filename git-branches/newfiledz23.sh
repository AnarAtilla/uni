#!/bin/bash

# Получение информации о системе
system_info=$(uname -a)
cpu_info=$(lscpu)
memory_info=$(free -h)
disk_info=$(df -h)

# Запись информации в файл
echo "Информация о системе:" > system_info.txt
echo "$system_info" >> system_info.txt
echo -e "\nИнформация о CPU:\n$cpu_info" >> system_info.txt
echo -e "\nИнформация о памяти:\n$memory_info" >> system_info.txt
echo -e "\nИнформация о диске:\n$disk_info" >> system_info.txt

echo "Файл system_info.txt успешно создан!"

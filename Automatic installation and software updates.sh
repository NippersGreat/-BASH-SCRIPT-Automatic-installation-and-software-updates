#!/bin/bash

# Обновление списка пакетов
sudo apt update

# Обновление установленных пакетов
sudo apt upgrade -y

# Список пакетов для установки
PACKAGES=(
  "curl"
  "vim"
  "git"
  "htop"
)

# Установка пакетов
for PACKAGE in "${PACKAGES[@]}"; do
  sudo apt install -y "$PACKAGE"
done

# Проверка успешности выполнения команды
if [ $? -eq 0 ]; then
  echo "Программное обеспечение успешно установлено и обновлено"
else
  echo "Ошибка при установке или обновлении программного обеспечения"
fi
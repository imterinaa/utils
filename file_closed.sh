#!/bin/bash

# Путь к XML файлу
xml_file="path/to/your/xml/file.xml"

# Закрывающийся тег для проверки
closing_tag="</com.xiriuz.sema.xml.schillerEDI.SchillerEDI>"

# Проверяем, существует ли файл
if [ ! -f "$xml_file" ]; then
    echo "Ошибка: Файл $xml_file не существует."
    exit 1
fi

# Проверяем, содержит ли файл закрывающийся тег
if grep -q "$closing_tag" "$xml_file"; then
    echo "XML файл содержит закрывающийся тег: $closing_tag"
else
    echo "XML файл НЕ содержит закрывающийся тег: $closing_tag"
fi

#!/bin/bash

OUTPUT_FILE="mod_code_dump.txt"

# Очищуємо або створюємо вихідний файл
> "$OUTPUT_FILE"

echo "=== СТРУКТУРА ПАПОК ===" | tee -a "$OUTPUT_FILE"
# Виводимо рекурсивно структуру папок (ігноруючи системні файли git чи подібні, якщо є)
if command -v tree &> /dev/null; then
    tree -a -I '.git' | tee -a "$OUTPUT_FILE"
else
    # Альтернатива через find, якщо утиліта tree не встановлена
    find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g' | tee -a "$OUTPUT_FILE"
fi

echo -e "\n\n=== ВМІСТ КОДУ (.lua та .cfg) ===" | tee -a "$OUTPUT_FILE"

# Шукаємо та збираємо вміст усіх файлів .lua та .cfg
find . -type f \( -name "*.lua" -o -name "*.cfg" \) | while read -r file; do
    echo -e "\n\n----------------------------------------" | tee -a "$OUTPUT_FILE"
    echo "ФАЙЛ: $file" | tee -a "$OUTPUT_FILE"
    echo "----------------------------------------\n" | tee -a "$OUTPUT_FILE"
    cat "$file" | tee -a "$OUTPUT_FILE"
done

echo -e "\n\nГотово! Весь код також збережено у файл: $OUTPUT_FILE"

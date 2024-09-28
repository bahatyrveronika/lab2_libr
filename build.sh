#!/bin/bash

# Параметри
LIB_DIR="./library"
EXAMPLES_DIR="./examples"
OBJ_DIR="$LIB_DIR/obj"

# Створення директорії для об'єктних файлів, якщо вона не існує
mkdir -p "$OBJ_DIR"

# Функція для компіляції бібліотеки
compile_library() {
    echo "Компіліруємо бібліотеку Bzip2..."

    # Параметри компіляції
    gcc -Wall -Wextra -fPIC -c $LIB_DIR/*.c -o "$OBJ_DIR/%.o"

    # Створення статичної та динамічної бібліотеки
    ar rcs "$LIB_DIR/libbz2.a" "$OBJ_DIR/*.o"
    gcc -shared -o "$LIB_DIR/libbz2.so" "$OBJ_DIR/*.o"

    echo "Бібліотека успішно скомпільована."
}

# Функція для компіляції прикладів
compile_examples() {
    echo "Компіліруємо приклади..."
    make -C "$EXAMPLES_DIR"
    echo "Приклади успішно скомпільовані."
}

# Запуск функцій
compile_library
compile_examples

echo "Проект успішно скомпільований!"

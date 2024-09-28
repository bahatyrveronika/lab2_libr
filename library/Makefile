# Makefile для бібліотеки Bzip2

# Визначення змінних
CC = gcc
CFLAGS = -Wall -Wextra -fPIC
AR = ar
ARFLAGS = rcs

# Список вихідних файлів
SRC = blocksort.c bzlib.c compress.c crctable.c decompress.c huffman.c randtable.c
OBJ = $(SRC:.c=.o)

# Ім'я статичної і динамічної бібліотеки
STATIC_LIB = libbz2.a
DYNAMIC_LIB = libbz2.so

# Правила компіляції
all: $(STATIC_LIB) $(DYNAMIC_LIB)

# Статична бібліотека
$(STATIC_LIB): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

# Динамічна бібліотека
$(DYNAMIC_LIB): $(OBJ)
	$(CC) -shared -o $@ $^

# Правила для компіляції об'єктних файлів
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Очистка
clean:
	rm -f $(OBJ) $(STATIC_LIB) $(DYNAMIC_LIB)

.PHONY: all clean

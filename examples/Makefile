CC = clang        # Замість clang++ використовуємо clang
#CFLAGS = -Wall -Wextra -g -I . -std=c11   # Оновлено CFLAGS для C-коду
#LIBS = -L../library -lbz2
#DYLD_LIBRARY_PATH=../library ./bzip2
#
## Список вихідних файлів
#SRC_BZIP2 = bzip2.c
#SRC_BZIP2RECOVER = bzip2recover.c
#
## Імена виконуваних файлів
#EXEC_BZIP2 = bzip2
#EXEC_BZIP2RECOVER = bzip2recover
#
#LIB_DIR = ../library
#
## Правила компіляції
#all: $(EXEC_BZIP2) $(EXEC_BZIP2RECOVER)
#
## Команда для створення виконуваного файлу bzip2
#$(EXEC_BZIP2): $(SRC_BZIP2)
#	$(CC) $(CFLAGS) $< -o $@ $(LIBS)
#
## Команда для створення виконуваного файлу bzip2recover
#$(EXEC_BZIP2RECOVER): $(SRC_BZIP2RECOVER)
#	$(CC) $(CFLAGS) $< -o $@ $(LIBS)
#
## Очистка
#clean:
#	rm -f $(EXEC_BZIP2) $(EXEC_BZIP2RECOVER)
#
#.PHONY: all clean
CC = clang
CFLAGS = -Wall -Wextra -g -I . -std=c11
LIBS = -L../library -lbz2

# Список вихідних файлів
SRC_BZIP2 = bzip2.c
SRC_BZIP2RECOVER = bzip2recover.c

# Імена виконуваних файлів
EXEC_BZIP2 = bzip2
EXEC_BZIP2RECOVER = bzip2recover

# Правила компіляції
all: $(EXEC_BZIP2) $(EXEC_BZIP2RECOVER)

# Команда для створення виконуваного файлу bzip2
$(EXEC_BZIP2): $(SRC_BZIP2)
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

# Команда для створення виконуваного файлу bzip2recover
$(EXEC_BZIP2RECOVER): $(SRC_BZIP2RECOVER)
	$(CC) $(CFLAGS) $< -o $@ $(LIBS)

# Очистка
clean:
	rm -f $(EXEC_BZIP2) $(EXEC_BZIP2RECOVER)

.PHONY: all clean

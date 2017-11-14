LIB=./lib
INCLUDE=./include
SRC=./src
OBJ=./obj
FANN=./fann

CC=gcc

FLAGS=  -g -O0
CFLAGS=''

all: libfann

libfann: $(LIB)/libfann.a
	echo "libfann.a built..."

$(LIB)/libfann.a: \
$(OBJ)/dev.o \

	ar csr $(LIB)/libdev.a \
$(OBJ)/dev.o \

$(OBJ)/dev.o: $(SRC)/dev.c
	$(CC) $(FLAGS) -I $(INCLUDE) -I $(OPT_DIR)/include -c $(SRC)/dev.c -o $(OBJ)/dev.o

clean:
	rm -f $(LIB)/lib*.a; rm -f $(OBJ)/*.o; rm -rf examples/bin/*

LIB=./lib
INCLUDE=./include
SRC=./src
OBJ=./obj
FANN=./fann

CC=gcc

FLAGS=  -g -O0
CFLAGS=''

all: libopt4fann libfann

libopt4fann: $(LIB)/libopt4fann.a
	echo "libopt4fann.a built..."
	
libfann:
	cd $(FANN); cmake .; sudo make install; cd ../;

$(LIB)/libopt4fann.a: \
$(OBJ)/dev.o \

	ar csr $(LIB)/libopt4fann.a \
$(OBJ)/dev.o \

$(OBJ)/dev.o: $(SRC)/dev.c
	$(CC) $(FLAGS) -I $(INCLUDE) -I $(OPT_DIR)/include -I $(FANN)/src/include -c $(SRC)/dev.c -o $(OBJ)/dev.o

clean:
	rm -f $(LIB)/lib*.a; rm -f $(OBJ)/*.o; rm -rf examples/bin/*; sudo rm /usr/local/include/*fann*

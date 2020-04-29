CC=gcc
CFLAGS=-I.
DEPS = hellomake.h
OBJ = hellomake.o hellofunc.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)


clean :
	rm -f hellomake.o hellofunc.o hellomake

setup :
	git clone https://github.com/joh/when-changed.git ../when_changed

watch :
	python3 ../when_changed/when-changed -s * -c 'bash ./run.sh'

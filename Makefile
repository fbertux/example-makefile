SRC = example-makefile.c
OBJ = ${SRC:.c=.o}

all: example-makefile

.c.o:
	${CC} -c ${CFLAGS} $<

example-makefile: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

clean:
	rm -f example-makefile

install: all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f example-makefile ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/example-makefile

.PHONY: all clean install

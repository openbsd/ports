LDFLAGS_t7 =		${LDFLAGS} -lpthread
LDFLAGS_t7-qt4 =	${LDFLAGS_t7} -lQtCore

all: t7 t7-qt4

t7:	t7.o
t7-qt4:	t7.o t7-qt4.o

t7 t7-qt4:
	${CC} -o $@ $> ${LDFLAGS_$@}

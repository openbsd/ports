PROG=	pngcrush
SRCS=	adler32.c crc32.c deflate.c gzio.c infblock.c infcodes.c \
	inffast.c inflate.c inftrees.c infutil.c png.c pngcrush.c \
	pngerror.c pngget.c pngmem.c pngpread.c pngread.c pngrio.c \
	pngrtran.c pngrutil.c pngset.c pngtrans.c pngvcrd.c \
	pngwio.c pngwrite.c pngwtran.c pngwutil.c trees.c zutil.c

BINDIR=	${PREFIX}/bin
CFLAGS+=-Wall
LDADD+=	-lm
NOMAN=	yes

.include <bsd.prog.mk>

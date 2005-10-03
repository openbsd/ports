# $OpenBSD: Makefile,v 1.1.1.1 2005/10/03 14:36:58 robert Exp $

PROG=	pngmeta
SRCS=	pngmeta.c

CFLAGS+=-I${LOCALBASE}/include/libpng -DVERSION=1.11
DPADD=	${LIBM}
LDADD=	-L${LOCALBASE}/lib -lm -lpng -lz

MAN=	pngmeta.1	

.include <bsd.prog.mk>

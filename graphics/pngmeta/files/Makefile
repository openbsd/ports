# $OpenBSD: Makefile,v 1.2 2009/03/06 15:08:53 naddy Exp $

PROG=	pngmeta
SRCS=	pngmeta.c

CFLAGS+=-I${LOCALBASE}/include/libpng -DVERSION=1.11
DPADD=	${LIBM}
LDADD=	-L${LOCALBASE}/lib -lpng -lz -lm

MAN=	pngmeta.1	

.include <bsd.prog.mk>

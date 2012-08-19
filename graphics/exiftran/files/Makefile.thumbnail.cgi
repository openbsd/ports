# $OpenBSD: Makefile.thumbnail.cgi,v 1.2 2012/08/19 22:59:06 ajacoutot Exp $

PROG=	thumbnail.cgi

.PATH: ${.CURDIR}/../..
SRCS+=	thumbnail.cgi.c

CFLAGS+= -I${PREFIX}/include -DHAVE_NEW_EXIF
LDADD=	-L${PREFIX}/lib -lexif

MAN=

.include <bsd.prog.mk>

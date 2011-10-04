# $FreeBSD: ports/graphics/exiftran/files/Makefile.thumbnail.cgi,v 1.1 2011/06/03 12:51:23 mm Exp $
# $OpenBSD: Makefile.thumbnail.cgi,v 1.1.1.1 2011/10/04 07:28:36 ajacoutot Exp $

PROG=	thumbnail.cgi

.PATH: ${.CURDIR}/../..
SRCS+=	thumbnail.cgi.c

CFLAGS+= -I${PREFIX}/include -DHAVE_NEW_EXIF
LDADD=	-L${PREFIX}/lib -lexif

MAN=

.include <bsd.prog.mk>

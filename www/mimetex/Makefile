# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:28 sthen Exp $

COMMENT=		parse LaTeX math expressions into gif images

DISTNAME=		mimetex-1.65
REVISION=		3
CATEGORIES=		www

HOMEPAGE=		http://www.forkosh.com/mimetex.html

# GPLv2 or later
PERMIT_PACKAGE=	Yes

MASTER_SITES=		http://meta-planets.net/~openbsd/

NO_TEST=     	Yes

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/cgi-bin

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} ${STATIC} -DAA mimetex.c gifsave.c \
	    -lm -o ${WRKDIST}/mimetex

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_PROGRAM} ${WRKDIST}/mimetex ${INSTDIR}

.include <bsd.port.mk>

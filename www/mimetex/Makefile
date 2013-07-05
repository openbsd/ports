# $OpenBSD: Makefile,v 1.6 2013/07/05 09:34:35 jasper Exp $

COMMENT=		parse LaTeX math expressions into gif images

DISTNAME=		mimetex-1.65
REVISION=		1
CATEGORIES=		www

HOMEPAGE=		http://www.forkosh.com/mimetex.html
MAINTAINER=		Mischa Diehm <md@msys.ch>

# GPLv2 or later
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=		http://meta-planets.net/~openbsd/

NO_TEST=     	Yes

PREFIX=		${VARBASE}/www
INSTDIR=		${PREFIX}/cgi-bin

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -static -DAA mimetex.c gifsave.c -lm \
	    -o ${WRKDIST}/mimetex

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL} -o ${BINOWN} ${WRKDIST}/mimetex ${INSTDIR}

.include <bsd.port.mk>

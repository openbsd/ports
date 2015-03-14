# $OpenBSD: Makefile,v 1.8 2015/03/14 20:52:47 naddy Exp $

COMMENT=		parse LaTeX math expressions into gif images

DISTNAME=		mimetex-1.65
REVISION=		2
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
	cd ${WRKDIST} && ${CC} ${CFLAGS} ${STATIC} -DAA mimetex.c gifsave.c \
	    -lm -o ${WRKDIST}/mimetex

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_PROGRAM} ${WRKDIST}/mimetex ${INSTDIR}

.include <bsd.port.mk>

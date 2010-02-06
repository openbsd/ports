# $OpenBSD: Makefile,v 1.3 2010/02/06 22:15:21 jasper Exp $

COMMENT=		parse LaTeX math expressions into gif images

DISTNAME=		mimetex-1.65
PKGNAME=		${DISTNAME}p1
CATEGORIES=		www

HOMEPAGE=		http://www.forkosh.com/mimetex.html
MAINTAINER=		Mischa Diehm <md@msys.ch>

# GPLv2 or later
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://meta-planets.net/~openbsd/

NO_REGRESS=     	Yes

PREFIX=			/var/www
INSTDIR=		${PREFIX}/cgi-bin

do-build:
	cd ${WRKDIST} && ${CC} ${CFLAGS} -static -DAA mimetex.c gifsave.c -lm \
	    -o ${WRKDIST}/mimetex

do-install:
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL} -o ${BINOWN} ${WRKDIST}/mimetex ${INSTDIR}

.include <bsd.port.mk>

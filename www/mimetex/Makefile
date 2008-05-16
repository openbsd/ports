# $OpenBSD: Makefile,v 1.1.1.1 2008/05/16 15:21:23 mbalmer Exp $

COMMENT=		parse LaTeX math expressions into gif images

DISTNAME=		mimetex-1.65
CATEGORIES=		www

HOMEPAGE=		http://www.forkosh.com/mimetex.html
MAINTAINER=		Mischa Diehm <md@msys.ch>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		http://meta-planets.net/~openbsd/

NO_BUILD=       	Yes
NO_REGRESS=     	Yes
PKG_ARCH=       	*

PREFIX=			/var/www
INSTDIR=		${PREFIX}/cgi-bin

do-install:
	cd ${WRKDIST} && cc -static -DAA mimetex.c gifsave.c -lm \
		-o ${WRKDIST}/mimetex
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL} -o ${BINOWN} ${WRKDIST}/mimetex ${INSTDIR}

.include <bsd.port.mk>

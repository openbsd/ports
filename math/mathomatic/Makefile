# $OpenBSD: Makefile,v 1.13 2007/10/30 14:19:14 steven Exp $

COMMENT=	small, portable, general purpose computer algebra system

DISTNAME=	mathomatic-12.7.9
CATEGORIES=	math

HOMEPAGE=	http://mathomatic.orgserve.de/math/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses readline

MASTER_SITES=	http://www.panix.com/~gesslein/
EXTRACT_SUFX=	.tar.bz2

MAKE_ENV=	READLINE=1
MAKE_FILE=	makefile

REGRESS_TARGET=	test

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mathomatic ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/mathomatic.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mathomatic
	${INSTALL_DATA} ${WRKSRC}/changes.txt ${WRKSRC}/doc/*.html \
		${PREFIX}/share/doc/mathomatic/

.include <bsd.port.mk>

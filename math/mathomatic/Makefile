# $OpenBSD: Makefile,v 1.2 2005/06/28 16:00:05 naddy Exp $

COMMENT=	"small, portable, general purpose computer algebra system"

DISTNAME=	mathomatic-12.4.2
CATEGORIES=	math

HOMEPAGE=	http://mathomatic.orgserve.de/math/

MAINTAINER=	Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m ncurses readline

MASTER_SITES=	http://www.panix.com/~gesslein/
EXTRACT_SUFX=	.tgz

MAKE_ENV=	READLINE=1
MAKE_FILE=	makefile

REGRESS_TARGET=	test

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mathomatic ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/doc/mathomatic.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mathomatic
	${INSTALL_DATA} ${WRKSRC}/changes.txt ${WRKSRC}/doc/*.htm* \
		${PREFIX}/share/doc/mathomatic/

.include <bsd.port.mk>

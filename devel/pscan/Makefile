# $OpenBSD: Makefile,v 1.1.1.1 2006/09/21 20:52:26 steven Exp $

COMMENT=	"limited problem scanner for C source files"

DISTNAME=	pscan
PKGNAME=	${DISTNAME}-1.6
CATEGORIES=	devel

HOMEPAGE=	http://www.striker.ottawa.on.ca/~aland/pscan/

MAINTAINER=	Steffen Wendzel <cdp@doomed-reality.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

WANTLIB=	c

DIST_SUBDIR=	${PKGNAME}
ALL_TARGET=	pscan

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pscan ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/find_formats.sh ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pscan
	${INSTALL_DATA} ${WRKSRC}/test.c ${PREFIX}/share/examples/pscan

.include <bsd.port.mk>

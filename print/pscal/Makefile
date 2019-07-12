# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:56 sthen Exp $

COMMENT=	utility for generating PostScript calendars

DISTNAME=	pscal-1.16
CATEGORIES=	print
REVISION =	0

HOMEPAGE=	http://www.panix.com/~mbh/projects.html

PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.panix.com/~mbh/pscal/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pscal
	${INSTALL_SCRIPT} ${WRKSRC}/pscal ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pscal

.include <bsd.port.mk>

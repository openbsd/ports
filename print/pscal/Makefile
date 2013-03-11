# $OpenBSD: Makefile,v 1.5 2013/03/11 11:37:54 espie Exp $

COMMENT=	utility for generating PostScript calendars

DISTNAME=	pscal-1.16
CATEGORIES=	print

HOMEPAGE=	http://www.panix.com/~mbh/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.panix.com/~mbh/pscal/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pscal
	${INSTALL_SCRIPT} ${WRKSRC}/pscal ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pscal

.include <bsd.port.mk>

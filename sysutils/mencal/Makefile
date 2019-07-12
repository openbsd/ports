# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:46 sthen Exp $

COMMENT=	cal that can use color to display calendar

DISTNAME=	mencal-3.0
CATEGORIES=	sysutils

HOMEPAGE=	http://www.kyberdigi.cz/projects/mencal/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}files/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>

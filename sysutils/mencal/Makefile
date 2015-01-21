# $OpenBSD: Makefile,v 1.9 2015/01/21 06:23:35 bentley Exp $

COMMENT=	cal that can use color to display calendar

DISTNAME=	mencal-2.4
CATEGORIES=	sysutils
REVISION =	0

HOMEPAGE=	http://www.kyberdigi.cz/projects/mencal/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>

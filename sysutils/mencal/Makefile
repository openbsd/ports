# $OpenBSD: Makefile,v 1.8 2013/03/11 11:41:31 espie Exp $

COMMENT=	cal that can use color to display calendar

DISTNAME=	mencal-2.4
CATEGORIES=	sysutils

HOMEPAGE=	http://www.kyberdigi.cz/projects/mencal/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}files/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>

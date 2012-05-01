# $OpenBSD: Makefile,v 1.7 2012/05/01 05:32:41 gsoares Exp $

COMMENT=	cal that can use color to display calendar

DISTNAME=	mencal-2.4
CATEGORIES=	sysutils

HOMEPAGE=	http://www.kyberdigi.cz/projects/mencal/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/mencal ${PREFIX}/bin

.include <bsd.port.mk>

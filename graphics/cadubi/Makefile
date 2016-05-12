# $OpenBSD: Makefile,v 1.14 2016/05/12 14:00:13 espie Exp $

DISTNAME=	cadubi-1.3
REVISION =	1
CATEGORIES=	graphics editors

# perl artistic
PERMIT_PACKAGE_CDROM=	Yes

COMMENT=	ASCII drawing utility
HOMEPAGE=	http://langworth.com/cadubi.html
MASTER_SITES=	http://langworth.com/downloads/

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	@mkdir ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/help.txt ${PREFIX}/share/doc/cadubi

.include <bsd.port.mk>

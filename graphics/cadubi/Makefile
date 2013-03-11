# $OpenBSD: Makefile,v 1.13 2013/03/11 11:10:51 espie Exp $

DISTNAME=	cadubi-1.3
REVISION =	0
CATEGORIES=	graphics editors

# perl artistic
PERMIT_PACKAGE_CDROM=	Yes

COMMENT=	ASCII drawing utility
HOMEPAGE=	http://langworth.com/cadubi.html
MASTER_SITES=	http://langworth.com/downloads/

RUN_DEPENDS=	devel/p5-Term-ReadKey

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cadubi ${PREFIX}/bin
	@mkdir ${PREFIX}/share/doc/cadubi
	${INSTALL_DATA} ${WRKSRC}/help.txt ${PREFIX}/share/doc/cadubi

.include <bsd.port.mk>

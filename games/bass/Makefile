# $OpenBSD: Makefile,v 1.14 2019/07/12 20:46:14 sthen Exp $

PKG_ARCH=	*

COMMENT=	Beneath A Steel Sky
DISTNAME=	bass-cd-1.2
REVISION=	0
PKGNAME=	${DISTNAME:S/cd-//}
EXTRACT_SUFX=	.zip
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Conditional
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/scummvm>=0.5.1
# don't waste time building on arch where scummvm doesn't build
BUILD_DEPENDS=	${RUN_DEPENDS}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bass
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bass
	${INSTALL_DATA} ${WRKSRC}/sky.{dnr,dsk,cpt} ${PREFIX}/share/bass
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/bass

.include <bsd.port.mk>

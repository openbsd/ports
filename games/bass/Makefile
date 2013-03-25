# $OpenBSD: Makefile,v 1.12 2013/03/25 00:14:26 sthen Exp $

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
PERMIT_PACKAGE_CDROM=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/scummvm>=0.5.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bass
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bass
	${INSTALL_DATA} ${WRKSRC}/sky.{dnr,dsk,cpt} ${PREFIX}/share/bass
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/bass

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2013/03/11 12:17:51 espie Exp $

PKG_ARCH=	*

COMMENT=	Beneath A Steel Sky
DISTNAME=	bass-cd-1.2
PKGNAME=	${DISTNAME:S/cd-//}
EXTRACT_SUFX=	.zip
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Conditional
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	space constraints

NO_BUILD=	Yes
NO_TEST=	Yes

RUN_DEPENDS=	games/scummvm>=0.5.1

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bass
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bass
	${INSTALL_DATA} ${WRKSRC}/sky.{dnr,dsk,cpt} ${PREFIX}/share/bass
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/bass

.include <bsd.port.mk>

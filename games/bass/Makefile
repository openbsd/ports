# $OpenBSD: Makefile,v 1.6 2005/11/03 11:06:28 jsg Exp $

PKG_ARCH=	*

COMMENT=	"Beneath A Steel Sky"
DISTNAME=	bass-cd-1.2
PKGNAME=	${DISTNAME:S/cd-//}
EXTRACT_SUFX=	.zip
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# Conditional
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	"space constraints"

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:scummvm->=0.5.1:games/scummvm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bass
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bass
	${INSTALL_DATA} ${WRKSRC}/sky.{dnr,dsk,cpt} ${PREFIX}/share/bass
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/bass

.include <bsd.port.mk>

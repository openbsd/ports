# $OpenBSD: Makefile,v 1.1.1.1 2004/04/07 00:59:06 jolan Exp $

PKG_ARCH=	*

COMMENT=	"flight of the amazon queen"
DISTNAME=	FOTAQ_Talkie
EXTRACT_SUFX=	.zip
PKGNAME=	fotaq-20040316
DIST_SUBDIR=	${PKGNAME}
CATEGORIES=	games x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=scummvm/}

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# Conditional
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes

RUN_DEPENDS=	:scummvm->=0.6.0:games/scummvm

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fotaq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/fotaq
	${INSTALL_DATA} ${WRKSRC}/queen.1c ${PREFIX}/share/fotaq
	${INSTALL_DATA} ${WRKSRC}/readme.txt ${PREFIX}/share/doc/fotaq

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2017/08/07 19:35:20 rsadowski Exp $

COMMENT=		free unicode symbol font

V=			9.17
DISTNAME=		Symbola
PKGNAME=		symbola-ttf-${V}
CATEGORIES=		fonts x11

HOMEPAGE=		http://users.teilar.gr/~g1951d/

# "free for any use"
PERMIT_PACKAGE_CDROM =		Yes

DISTFILES=		${V}-{}Symbola${EXTRACT_SUFX}

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.zip
PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

FONTSDIR=		${PREFIX}/share/fonts/symbola

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>

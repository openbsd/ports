# $OpenBSD: Makefile,v 1.1.1.1 2015/05/26 10:39:33 stsp Exp $

COMMENT=		free unicode symbol font

DISTNAME=		Symbola
PKGNAME=		symbola-ttf-7.21
CATEGORIES=		fonts x11

HOMEPAGE=		http://users.teilar.gr/~g1951d/

# "free for any use"
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES=		${HOMEPAGE}

EXTRACT_SUFX=		.zip
PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

FONTSDIR=               ${PREFIX}/share/fonts/symbola

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>

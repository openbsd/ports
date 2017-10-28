# $OpenBSD: Makefile,v 1.3 2017/10/28 15:44:40 landry Exp $

COMMENT=		free unicode symbol font

DISTNAME=		symbola-ttf-10.03
CATEGORIES=		fonts x11

HOMEPAGE=		http://users.teilar.gr/~g1951d/

# "free for any use"
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES=		https://distfiles.bsdfrog.org/

EXTRACT_SUFX=		.zip
PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes

FONTSDIR=		${PREFIX}/share/fonts/symbola

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${WRKDIR}/*.ttf ${FONTSDIR}

.include <bsd.port.mk>

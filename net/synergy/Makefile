# $OpenBSD: Makefile,v 1.32 2017/07/26 22:45:28 sthen Exp $

COMMENT=		mouse and keyboard sharing utility

VERSION=		1.7.4
DISTNAME=		synergy-${VERSION}
CATEGORIES=		net x11

GH_ACCOUNT=		synergy
GH_PROJECT=		synergy
GH_TAGNAME=		v${VERSION}-stable
REVISION=		0

HOMEPAGE=		http://synergy-foss.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xi Xinerama Xrandr Xtst \
			c curl m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS=		net/curl

MODULES=		devel/cmake

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/synergy[cds] ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/synergy
	${INSTALL_DATA} ${WRKSRC}/doc/synergy.conf.exampl* \
		${PREFIX}/share/examples/synergy/
	${INSTALL_MAN} ${WRKSRC}/doc/synergyc.man \
		${PREFIX}/man/man1/synergyc.1
	${INSTALL_MAN} ${WRKSRC}/doc/synergys.man \
		${PREFIX}/man/man1/synergys.1

.include <bsd.port.mk>

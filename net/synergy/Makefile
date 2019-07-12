# $OpenBSD: Makefile,v 1.36 2019/07/12 20:48:49 sthen Exp $

COMMENT=		mouse and keyboard sharing utility

VERSION=		1.7.6
DISTNAME=		synergy-${VERSION}
CATEGORIES=		net x11
REVISION=		1

GH_ACCOUNT=		symless
GH_PROJECT=		synergy-core
GH_TAGNAME=		v${VERSION}-stable

HOMEPAGE=		https://synergy-foss.org/

# GPLv2 only
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xi Xinerama Xrandr
WANTLIB += Xtst c curl m

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		net/curl

MODULES=		devel/cmake

NO_TEST=		Yes

CXXFLAGS +=		-std=c++03

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

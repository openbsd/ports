# $OpenBSD: Makefile,v 1.33 2018/04/11 12:59:00 sthen Exp $

COMMENT=		mouse and keyboard sharing utility

VERSION=		1.7.6
DISTNAME=		synergy-${VERSION}
CATEGORIES=		net x11

GH_ACCOUNT=		symless
GH_PROJECT=		synergy-core
GH_TAGNAME=		v${VERSION}-stable

HOMEPAGE=		http://synergy-foss.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xi Xinerama Xrandr
WANTLIB += Xtst c curl m

LIB_DEPENDS=		net/curl

MODULES=		devel/cmake

NO_TEST=		Yes

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=		-std=c++03
.endif

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

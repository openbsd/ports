# $OpenBSD: Makefile,v 1.5 2021/06/09 19:50:07 sthen Exp $

COMMENT =	online multiplayer doom

V =		0.8.3
DISTNAME =	odamex-src-${V}
PKGNAME =	odamex-${V}
REVISION =	0

CATEGORIES =	games
HOMEPAGE =	https://odamex.net/
MAINTAINER =	Edd Barrett <edd@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SDL2 SDL2_mixer SM X11 Xext
WANTLIB += c execinfo m miniupnpc png portmidi wx_baseu-3.0 wx_baseu_net-3.0
WANTLIB += wx_baseu_xml-3.0 wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0
WANTLIB += wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0 wx_gtk3u_xrc-3.0
WANTLIB += z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=odamex/}
EXTRACT_SUFX =		.tar.bz2

FIX_CRLF_FILES =	CMakeLists.txt

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ENV +=	CXXFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/miniupnpc" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	-DNO_AG-ODALAUNCH_TARGET=YES

LIB_DEPENDS =		x11/wxWidgets \
			audio/portmidi \
			graphics/png \
			devel/sdl2-mixer \
			net/miniupnp/miniupnpc

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt
	${SUBST_CMD} ${WRKSRC}/server/CMakeLists.txt

EXAMPLES_DIR =	${PREFIX}/share/examples/odamex
post-install:
	mv ${PREFIX}/share/odamex/config-samples ${EXAMPLES_DIR}
	chown -r ${shareown}:${sharegrp} ${EXAMPLES_DIR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2019/07/12 20:46:24 sthen Exp $

COMMENT =		modernization of the classic DOS game Scorched Earth

DISTNAME =		Scorched3D-44-src
PKGNAME =		${DISTNAME:L:S/-src//}
REVISION =		2

CATEGORIES =		games x11

HOMEPAGE =		http://www.scorched3d.co.uk/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU SDL SDL_net alut c expat
WANTLIB += fftw3f freetype jpeg m ogg openal png vorbis vorbisfile
WANTLIB += wx_baseu-3.0 wx_baseu_net-3.0 wx_baseu_xml-3.0 wx_gtk3u_adv-3.0
WANTLIB += wx_gtk3u_core-3.0 wx_gtk3u_html-3.0 wx_gtk3u_qa-3.0
WANTLIB += wx_gtk3u_xrc-3.0 z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=scorched3d/}

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		audio/openal \
			audio/libvorbis \
			audio/freealut \
			devel/sdl-net \
			graphics/glew \
			math/fftw3,float \
			x11/wxWidgets>=3.0.4
RUN_DEPENDS =		devel/xdg-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--datarootdir=${PREFIX}/share/scorched3d/

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

FAKE_FLAGS+=		docdir="${PREFIX}/share/doc/scorched3d/"

CFLAGS +=		`pkg-config --cflags libpng`
WRKDIST =		${WRKDIR}/scorched

# dos line-endings in source files
post-extract:
	find ${WRKSRC} -type f '(' -name '*.h' -o -name '*.cpp' ')' \
	    -exec perl -i -pe 's/\r$$//' {} +

pre-configure:
	cd ${WRKSRC}; \
		touch NEWS AUTHORS ChangeLog; \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			autoreconf -fi

.include <bsd.port.mk>

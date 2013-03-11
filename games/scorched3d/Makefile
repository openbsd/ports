 # $OpenBSD: Makefile,v 1.7 2013/03/11 11:07:40 espie Exp $

COMMENT =		modernization of the classic DOS game Scorched Earth

DISTNAME =		Scorched3D-43.1c-src
PKGNAME =		${DISTNAME:L:S/-src//}
REVISION =		2

CATEGORIES =		games x11

HOMEPAGE =		http://www.scorched3d.co.uk/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		GL GLU c expat freetype m pthread stdc++ z
WANTLIB +=		SDL SDL_net alut fftw3f jpeg openal png ogg vorbisfile
WANTLIB +=		wx_base wx_base_net wx_base_odbc wx_base_xml vorbis
WANTLIB +=		wx_gtk2_adv wx_gtk2_aui wx_gtk2_core wx_gtk2_dbgrid
WANTLIB +=		wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=scorched3d/}

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =		audio/openal \
			audio/libvorbis \
			audio/freealut \
			x11/wxWidgets \
			math/fftw3,float \
			devel/sdl-net \
			devel/sdl-mixer
RUN_DEPENDS =		devel/xdg-utils

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--datarootdir=${PREFIX}/share/scorched3d/

AUTOCONF_VERSION =	2.63
AUTOMAKE_VERSION =	1.11

FAKE_FLAGS+=		docdir="${PREFIX}/share/doc/scorched3d/"

CFLAGS +=		`pkg-config --cflags libpng`
WRKDIST =		${WRKDIR}/scorched

pre-configure:
	cd ${WRKSRC}; \
		touch NEWS AUTHORS ChangeLog; \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
			autoreconf -fi

.include <bsd.port.mk>

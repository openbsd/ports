# $OpenBSD: Makefile,v 1.22 2019/07/12 20:46:25 sthen Exp $

COMMENT =		jump 'n' run game

V =			0.6.0
DISTNAME =		SuperTux-v${V}-Source
PKGNAME =		supertux-$V
REVISION =		2

CATEGORIES =		games

HOMEPAGE =		https://www.supertux.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL GLEW GLU SDL2 SDL2_image boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_system-mt
WANTLIB += c curl freetype m ogg openal png vorbis vorbisfile
WANTLIB += z

MASTER_SITES =		https://github.com/SuperTux/supertux/releases/download/v${V}/

MAKE_ENV +=		CXXFLAGS="${CXXFLAGS}"

MODULES +=		devel/cmake
USE_NINJA =		No
COMPILER =		base-clang ports-gcc
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/sdl2-image \
			graphics/glew \
			net/curl \
			audio/openal \
			audio/libvorbis \
			devel/boost

CONFIGURE_ARGS +=	-DINSTALL_SUBDIR_BIN="${LOCALBASE}/bin" \
			-DBUILD_SHARED_LIBS=OFF

NO_TEST =		Yes

post-extract:
	perl -i -pe 's/\r$$//' ${WRKDIST}/external/squirrel/CMakeLists.txt

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/supertux/main.cpp

.include <bsd.port.mk>

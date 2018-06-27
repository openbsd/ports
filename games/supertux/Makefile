# $OpenBSD: Makefile,v 1.14 2018/06/27 21:03:50 espie Exp $

COMMENT =		jump 'n' run game

V =			0.5.1
DISTNAME =		SuperTux-v${V}-Source
PKGNAME =		supertux-$V
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://supertux.lethargik.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU SDL2 SDL2_image boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_system-mt c curl m ogg openal pthread vorbis
WANTLIB += vorbisfile ${COMPILER_LIBCXX}

MASTER_SITES =		https://github.com/SuperTux/supertux/releases/download/v${V}/

MAKE_ENV +=		CXXFLAGS="${CXXFLAGS}"

MODULES +=		devel/cmake
COMPILER =		base-clang ports-gcc
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/sdl2-image \
			graphics/glew \
			net/curl \
			audio/openal \
			audio/libvorbis \
			devel/boost

CONFIGURE_ARGS +=	-DINSTALL_SUBDIR_BIN="${LOCALBASE}/bin" \
			-DBUILD_SHARED_LIBS=OFF

NO_TEST =		Yes
# XXX compiler bug
CXXFLAGS +=		-O1

post-extract:
	perl -i -pe 's/\r$$//' ${WRKDIST}/external/squirrel/CMakeLists.txt

.include <bsd.port.mk>

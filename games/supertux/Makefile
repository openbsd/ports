# $OpenBSD: Makefile,v 1.6 2016/09/12 22:20:36 naddy Exp $

COMMENT =		jump 'n' run game

V =			0.4.0
DISTNAME =		supertux-$V
REVISION =		0

CATEGORIES =		games

HOMEPAGE =		http://supertux.lethargik.org/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLEW GLU SDL2 SDL2_image c curl iconv m ogg openal physfs
WANTLIB += pthread vorbis vorbisfile

MASTER_SITES =		https://github.com/SuperTux/supertux/releases/download/v${V}/
EXTRACT_SUFX =		.tar.bz2

MODULES +=		devel/cmake gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++
BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		converters/libiconv \
			devel/sdl2-image \
			devel/physfs \
			graphics/glew \
			net/curl \
			audio/openal \
			audio/libvorbis

CONFIGURE_ARGS +=	-DINSTALL_SUBDIR_BIN="${LOCALBASE}/bin" \
			-DBUILD_SHARED_LIBS=OFF

USE_GMAKE =		Yes

NO_TEST =		Yes
# XXX compiler bug
CXXFLAGS +=		-O1

post-extract:
	perl -i -pe 's/\r$$//' ${WRKDIST}/external/squirrel/CMakeLists.txt

.include <bsd.port.mk>

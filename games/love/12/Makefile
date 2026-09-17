# ./modules/data/HashFunction.cpp:25:3: error:
# Hashing not yet implemented for big endian
NOT_FOR_ARCHS =		${BE_ARCHS}

USE_WXNEEDED =		Yes

VERSION =		12.0
PKGSPEC =		love->=${VERSION},<13

SITES =
DISTNAME =
PKGNAME =		love-${VERSION}alpha0
DIST_TUPLE =		github love2d love 4e167072ae558e114cacec28ad5abb2ec2cdf05c .

SHARED_LIBS =		love-${VERSION}	0.0

WANTLIB += ${COMPILER_LIBCXX} SDL3 c freetype harfbuzz luajit-5.1
WANTLIB += m modplug ogg openal theora theoradec vorbisfile z

FIX_CRLF_FILES =	CMakeLists.txt

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		audio/libmodplug \
			audio/openal \
			audio/libvorbis \
			devel/harfbuzz \
			devel/sdl3 \
			lang/luajit \
			multimedia/libtheora

RUN_DEPENDS =		devel/desktop-file-utils \
			games/love/mime

PORTROACH =

WRKDIST =		${_DT_WRKDIST}

# disable some defaults for pre-12.0 love
CONFIGURE_STYLE =
CONFIGURE_ENV =

# enabling DEBUG_PACKAGES makes the build require datasize of ~18G
DEBUG_PACKAGES =

# delete the icon for the application/x-love-game mime type.
# rename some files to avoid name clashes with other version of love.
post-install:
	mv ${PREFIX}/bin/love{,${SUFFIX}}
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/mime
	cd ${PREFIX}/share/applications && \
		mv love.desktop love-${VERSION}.desktop
	cd ${PREFIX}/share/pixmaps/ && mv love.svg love-${VERSION}.svg

.include <bsd.port.mk>

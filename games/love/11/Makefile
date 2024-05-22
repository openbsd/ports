# ./modules/data/HashFunction.cpp:25:3: error:
# Hashing not yet implemented for big endian
NOT_FOR_ARCHS =		${BE_ARCHS}

VERSION =		11.5
REVISION =		0

SHARED_LIBS =		love-${VERSION}	0.0

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xcursor Xext Xfixes Xi
WANTLIB += Xrandr Xrender Xss c freetype m modplug mpg123 ogg
WANTLIB += openal samplerate sndio theoradec usbhid vorbis
WANTLIB += vorbisfile xcb z

LIB_DEPENDS =		audio/libmodplug \
			audio/mpg123 \
			audio/openal \
			audio/libvorbis \
			devel/sdl2 \
			multimedia/libtheora

RUN_DEPENDS =		devel/desktop-file-utils \
			games/love/mime

PORTROACH =

# delete the liblove.so symlink, .a and .la files; delete the icon for
# the application/x-love-game mime type too.
# rename some files to avoid name clashes with other version of love.
post-install:
	rm ${PREFIX}/lib/liblove.so.*
	rm ${PREFIX}/lib/*.{a,la}
	rm -rf ${PREFIX}/share/icons
	rm -rf ${PREFIX}/share/mime
	cd ${PREFIX}/share/applications && \
		mv love.desktop love-${VERSION}.desktop
	cd ${PREFIX}/share/pixmaps/ && mv love.svg love-${VERSION}.svg

.include <bsd.port.mk>

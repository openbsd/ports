COMMENT =		Ultima VII game engine for modern operating systems

DISTNAME =		exult-1.10.1

CATEGORIES =		games
HOMEPAGE =		https://exult.info/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPL v2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 X11 Xcursor Xext Xfixes Xi
WANTLIB += Xrandr Xrender Xss Xxf86dga Xxf86vm c iconv m ogg png
WANTLIB += samplerate sndio usbhid vorbis vorbisfile xcb z

SITES =			https://prdownloads.sourceforge.net/exult/

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		audio/fluidsynth \
			devel/autoconf-archive
RUN_DEPENDS =		audio/fluidsynth \
			devel/desktop-file-utils
LIB_DEPENDS =		audio/libogg \
			audio/libsamplerate \
			audio/libvorbis \
			converters/libiconv \
			devel/sdl2 \
			graphics/png

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

.include <bsd.port.mk>

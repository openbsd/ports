COMMENT =		Ultima VII game engine for modern operating systems

DISTNAME =		exult-1.12.0
REVISION =		0

CATEGORIES =		games
HOMEPAGE =		https://exult.info/
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPL v2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC SDL2 SDL2_image X11 Xcursor Xext Xfixes Xi
WANTLIB += Xrandr Xrender Xss Xxf86dga Xxf86vm avif c curses fluidsynth
WANTLIB += glib-2.0 gthread-2.0 iconv intl jxl m mp3lame mpg123 ogg opus
WANTLIB += pcre2-8 png readline samplerate sharpyuv sndfile sndio tiff usbhid
WANTLIB += vorbis vorbisenc vorbisfile webp webpdemux xcb z
WANTLIB += mt32emu

SITES =			https://prdownloads.sourceforge.net/exult/

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/autoconf-archive
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic
LIB_DEPENDS =		audio/fluidsynth \
			audio/libogg \
			audio/libsamplerate \
			audio/libvorbis \
			audio/munt \
			converters/libiconv \
			devel/sdl2-image \
			graphics/libavif \
			graphics/libjxl \
			graphics/libwebp \
			graphics/png

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CFLAGS +=		-fPIC

.include <bsd.port.mk>

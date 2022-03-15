COMMENT =	music visualization & VJing tool

PKGNAME =	${DISTNAME:S/-version//}
DISTNAME =	lebiniou-${V}
V = 		version-3.65.0
REVISION =      0

CATEGORIES =	multimedia

HOMEPAGE =	https://www.lebiniou.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	MagickCore-6.Q16 MagickWand-6.Q16 SDL2 avcodec avformat
WANTLIB +=	avutil c caca fftw3 glib-2.0 intl jack jansson m orcania
WANTLIB +=	pthread pulse pulse-simple sndfile sndio swscale ulfius
WANTLIB +=	yder

MASTER_SITES =	https://gitlab.com/lebiniou/lebiniou/-/archive/${V}/

# C11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

RUN_DEPENDS +=		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS +=		audio/jack \
			audio/libsndfile \
			audio/pulseaudio \
			devel/glib2 \
			devel/jansson \
			devel/orcania \
			devel/sdl2 \
			devel/yder \
			graphics/ffmpeg \
			graphics/ImageMagick \
			graphics/libcaca \
			math/fftw3 \
			www/ulfius

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoreconf

CONFIGURE_ARGS +=	--disable-alsa \
			--disable-oscaudio \
			--enable-jackaudio \
			--enable-pulseaudio \
			--disable-esd \
			--enable-sndfile \
			--enable-twip \
			--enable-caca \
			--enable-webcam

AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.11

.include <bsd.port.mk>

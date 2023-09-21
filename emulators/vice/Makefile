COMMENT =		versatile Commodore emulator

DISTNAME =		vice-3.7.1

CATEGORIES =		emulators

HOMEPAGE =		https://vice-emu.sourceforge.io/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image c iconv intl m png
WANTLIB += readline z

COMPILER =		base-clang ports-gcc base-gcc

SITES =			${SITE_SOURCEFORGE:=vice-emu/}

BUILD_DEPENDS =		devel/xa \
			converters/dos2unix

LIB_DEPENDS =		devel/gettext,-runtime \
			devel/sdl2 \
			devel/sdl2-image \
			graphics/png

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.71

CONFIGURE_ARGS +=	--without-alsa \
			--without-oss \
			--without-pulse \
			--disable-lame \
			--disable-portaudio \
			--disable-html-docs \
			--disable-pdf-docs \
			--enable-sdl2ui

CONFIGURE_ENV +=	ac_cv_header_mpg123_h=no

.include <bsd.port.mk>

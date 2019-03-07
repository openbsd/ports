# $OpenBSD: Makefile,v 1.16 2019/03/07 14:45:29 fcambus Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-3.3
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://vice-emu.sourceforge.net/

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC SDL2 c gif iconv intl jpeg
WANTLIB += m ogg png readline vorbis vorbisenc vorbisfile z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

BUILD_DEPENDS =		devel/xa

LIB_DEPENDS =		audio/flac \
			audio/libvorbis \
			devel/gettext \
			devel/sdl2 \
			graphics/giflib \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ARGS +=	--without-oss \
			--without-pulse \
			--disable-lame \
			--disable-portaudio \
			--enable-sdlui2

CONFIGURE_ENV +=	ac_cv_header_mpg123_h=no

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

post-install:
	rm ${PREFIX}/lib/vice/doc/vice.info

.include <bsd.port.mk>

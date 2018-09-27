# $OpenBSD: Makefile,v 1.11 2018/09/27 09:13:02 fcambus Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-3.2
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://vice-emu.sourceforge.net/

MAINTAINER =		Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC SDL2 c curses gif jpeg m ogg
WANTLIB += png readline vorbis vorbisenc vorbisfile z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

BUILD_DEPENDS =		devel/xa

LIB_DEPENDS =		audio/flac \
			audio/libvorbis \
			devel/sdl2 \
			graphics/giflib \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ARGS +=	--without-oss \
			--without-pulse \
			--with-sdlsound \
			--disable-hardsid \
			--disable-lame \
			--disable-portaudio \
			--enable-sdlui2

CONFIGURE_ENV +=	ac_cv_header_mpg123_h=no

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

post-install:
	rm ${PREFIX}/lib/vice/doc/vice.info

.include <bsd.port.mk>

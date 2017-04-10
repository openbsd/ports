# $OpenBSD: Makefile,v 1.7 2017/04/10 11:45:28 sthen Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-3.1

CATEGORIES =		emulators

HOMEPAGE =		http://vice-emu.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL SDL c gif jpeg m ogg png pthread readline ${LIBCXX}
WANTLIB += termcap vorbis vorbisenc vorbisfile z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vice-emu/}

LIB_DEPENDS =		audio/flac \
			audio/libvorbis \
			devel/sdl \
			graphics/giflib \
			graphics/jpeg \
			graphics/png

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.68

CONFIGURE_ARGS +=	--without-oss \
			--without-pulse \
			--with-sdlsound \
			--disable-lame \
			--disable-portaudio \
			--enable-sdlui

CONFIGURE_ENV +=	ac_cv_header_mpg123_h=no

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

post-install:
	rm ${PREFIX}/lib/vice/doc/vice.info

.include <bsd.port.mk>

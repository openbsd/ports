# $OpenBSD: Makefile,v 1.5 2017/04/01 18:11:05 espie Exp $

COMMENT =		versatile Commodore emulator

DISTNAME =		vice-3.0
REVISION =		0

CATEGORIES =		emulators

HOMEPAGE =		http://vice-emu.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC GL SDL c gif jpeg m ogg png pthread readline stdc++
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
			--enable-sdlui

CONFIGURE_ENV += ac_cv_header_portaudio_h=no
pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/vice.1

post-install:
	rm ${PREFIX}/lib/vice/doc/vice.info

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.30 2019/07/12 20:43:33 sthen Exp $

COMMENT =		SoundFont2 software synthesizer
DISTNAME =		fluidsynth-1.1.6
REVISION =		5

SHARED_LIBS +=	fluidsynth           1.0      # 6.2

CATEGORIES =		audio
HOMEPAGE =		http://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  FLAC c glib-2.0 gthread-2.0 iconv intl m curses ogg pcre
WANTLIB += pthread readline sndfile sndio vorbis vorbisenc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fluidsynth/}

LIB_DEPENDS =		audio/libsndfile \
			devel/glib2

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
AUTORECONF =		./autogen.sh

# autogen.sh needs aclocal/lib-ld.m4
BUILD_DEPENDS +=	devel/gettext,-tools

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS +=	--disable-coreaudio \
			--disable-coremidi \
			--disable-dart \
			--disable-dbus-support \
			--disable-lash \
			--disable-ladcca \
			--disable-midishare \
			--disable-oss-support \
			--disable-portaudio-support \
			--disable-pulse-support

# broken
CONFIGURE_ARGS +=	--disable-jack-support

post-patch:
	cp ${FILESDIR}/fluid_sndio.c ${WRKSRC}/src/drivers/

.include <bsd.port.mk>

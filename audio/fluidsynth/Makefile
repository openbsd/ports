# $OpenBSD: Makefile,v 1.32 2021/11/08 05:35:30 ratchov Exp $

COMMENT =		SoundFont2 software synthesizer
GH_ACCOUNT =		FluidSynth
GH_PROJECT =		fluidsynth
GH_TAGNAME =		v1.1.9
REVISION =		0

SHARED_LIBS +=	fluidsynth           2.0      # 6.0

CATEGORIES =		audio
HOMEPAGE =		https://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =  FLAC c glib-2.0 gthread-2.0 iconv intl m curses ogg opus
WANTLIB += pcre pthread readline sndfile sndio vorbis vorbisenc

LIB_DEPENDS =		audio/libsndfile \
			devel/glib2

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
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
	# not defined in autoconf build, but required by source code
	# upstream really wants cmake, but the sndio patches need porting first
	sed -i 's,DEFAULT_SOUNDFONT,"${LOCALBASE}/share/generaluser-gs/GeneralUser_GS.sf2",' \
	    ${WRKSRC}/src/synth/fluid_synth.c

.include <bsd.port.mk>

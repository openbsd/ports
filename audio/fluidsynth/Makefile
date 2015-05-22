# $OpenBSD: Makefile,v 1.22 2015/05/22 11:31:10 ajacoutot Exp $

COMMENT =		SoundFont2 software synthesizer
DISTNAME =		fluidsynth-1.1.6
REVISION =		3

SHARED_LIBS +=	fluidsynth           1.0      # 6.2

CATEGORIES =		audio
HOMEPAGE =		http://www.fluidsynth.org/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC c glib-2.0 gthread-2.0 m ncurses ogg
WANTLIB += pcre pthread readline sndfile sndio vorbis vorbisenc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=fluidsynth/}

MODULES =		devel/gettext
LIB_DEPENDS =		audio/libsndfile \
			devel/glib2

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
# autogen.sh needs libtoolize
BUILD_DEPENDS +=        devel/libtool

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-coreaudio \
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

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

.include <bsd.port.mk>

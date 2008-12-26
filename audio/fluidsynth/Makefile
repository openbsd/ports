# $OpenBSD: Makefile,v 1.3 2008/12/26 08:45:12 jakemsr Exp $

COMMENT =		SoundFont2 software synthesizer
DISTNAME =		fluidsynth-1.0.8
PKGNAME =		${DISTNAME}p1

SHARED_LIBS =		fluidsynth	0.0

CATEGORIES =		audio
HOMEPAGE =		http://fluidsynth.resonance.org/trac

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m ncurses pthread readline samplerate sndio

MASTER_SITES =		http://download.savannah.gnu.org/releases/fluid/

DEV_FLAGS =		-DDEVOSSAUDIO=\\\"/dev/audio\\\" \
			-DDEVOSSMIDI=\\\"/dev/rmidi0\\\"
MAKE_FLAGS =		CFLAGS="${CFLAGS} ${DEV_FLAGS}"

LIB_DEPENDS =		jack::audio/jack

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-lash \
			--disable-ladcca \
			--disable-oss-support

post-patch:
	cp ${FILESDIR}/fluid_libsndio.c ${WRKSRC}/src/

pre-configure:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	    AUTOCONF_VERSION=${AUTOCONF_VERSION} ./autogen.sh

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2008/04/20 11:19:20 jakemsr Exp $

COMMENT =		SoundFont2 software synthesizer
DISTNAME =		fluidsynth-1.0.8
PKGNAME =		${DISTNAME}p0

SHARED_LIBS =		fluidsynth	0.0

CATEGORIES =		audio
HOMEPAGE =		http://fluidsynth.resonance.org/trac

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c m ncurses ossaudio pthread readline

MASTER_SITES =		http://download.savannah.gnu.org/releases/fluid/

DEV_FLAGS =		-DDEVOSSAUDIO=\\\"/dev/audio\\\" \
			-DDEVOSSMIDI=\\\"/dev/rmidi0\\\"
MAKE_FLAGS =		CFLAGS="${CFLAGS} ${DEV_FLAGS}"

LIB_DEPENDS =		jack::audio/jack

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-lash \
			--disable-ladcca

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2017/07/16 19:18:48 espie Exp $

COMMENT =		CAPS LADSPA plugins

V =			0.9.24
DISTNAME =		caps_${V}
PKGNAME =		caps-plugins-${V}
CATEGORIES =		audio
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://quitte.de/dsp/caps.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

MASTER_SITES =		http://quitte.de/dsp/

MAKE_FLAGS =		CC=${CXX} \
			OPTS="${CFLAGS} -fPIC -DPIC"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/caps-${V}

.include <bsd.port.mk>

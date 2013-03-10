# $OpenBSD: Makefile,v 1.3 2013/03/10 22:55:01 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		CAPS LADSPA plugins

V =			0.4.4
DISTNAME =		caps_${V}
PKGNAME =		caps-plugins-${V}
REVISION =		0
CATEGORIES =		audio

HOMEPAGE =		http://quite.de/dsp/caps.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m stdc++

MASTER_SITES =		http://quitte.de/dsp/

MAKE_FLAGS =		CC=${CXX} \
			OPTS="${CFLAGS} -fPIC -DPIC"
FAKE_FLAGS =		PREFIX="${DESTDIR}${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/caps-${V}

.include <bsd.port.mk>

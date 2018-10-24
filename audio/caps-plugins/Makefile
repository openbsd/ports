# $OpenBSD: Makefile,v 1.11 2018/10/24 14:27:57 sthen Exp $

COMMENT =		CAPS LADSPA plugins

V =			0.9.24
DISTNAME =		caps_${V}
REVISION =		3
PKGNAME =		caps-plugins-${V}
CATEGORIES =		audio
EXTRACT_SUFX =		.tar.bz2

HOMEPAGE =		http://quitte.de/dsp/caps.html

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://quitte.de/dsp/

MAKE_FLAGS =		CC=${CXX} \
			OPTS="${CFLAGS} -fPIC -DPIC"
FAKE_FLAGS =		PREFIX="${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/caps-${V}

.include <bsd.port.mk>

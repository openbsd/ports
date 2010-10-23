# $OpenBSD: Makefile,v 1.1.1.1 2010/10/23 21:59:58 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		CAPS LADSPA plugins
V =			0.4.4
DISTNAME =		caps_${V}
PKGNAME =		caps-plugins-${V}

CATEGORIES =		audio

HOMEPAGE =		http://quite.de/dsp/caps.html

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m stdc++

MASTER_SITES =		http://quitte.de/dsp/

MAKE_FLAGS =		CC=${CXX} \
			OPTS="${CFLAGS} -fPIC -DPIC"
FAKE_FLAGS =		PREFIX="${DESTDIR}${PREFIX}"

USE_GMAKE =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/caps-${V}

.include <bsd.port.mk>

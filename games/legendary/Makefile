COMMENT =		free and open source replacement for Epic Games Launcher
MODPY_DISTV =		0.21.1
DISTNAME =		legendary_gl-${MODPY_DISTV}
PKGNAME =		legendary-${MODPY_DISTV}

CATEGORIES =		games
MAINTAINER =		Thomas Frohwein <thfr@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		uv_build

RUN_DEPENDS =		devel/py-wheel \
			sysutils/py-filelock \
			www/py-requests

.include <bsd.port.mk>

COMMENT =		fetch lyrics from spotify

V =			0.0.1.8
MODPY_EGG_VERSION =	${V}
DISTNAME =		syrics-${V}
CATEGORIES =		textproc audio
REVISION =		0

HOMEPAGE =		https://github.com/akashrchandran/syrics

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		audio/py-tinytag${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			www/py-spotipy${MODPY_FLAVOR}

.include <bsd.port.mk>

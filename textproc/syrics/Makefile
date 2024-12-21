COMMENT =		fetch lyrics from spotify

V =			0.0.1.8
MODPY_DISTV =	${V}
DISTNAME =		syrics-${V}
CATEGORIES =		textproc audio
REVISION =		1

HOMEPAGE =		https://github.com/akashrchandran/syrics

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		audio/py-tinytag \
			devel/py-tqdm \
			www/py-requests \
			www/py-spotipy

.include <bsd.port.mk>

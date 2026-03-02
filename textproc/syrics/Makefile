COMMENT =		fetch lyrics from spotify

# project archived upstream; replacement is https://libre-lyrics.github.io/
# (https://github.com/libre-lyrics/librelyrics +
# https://github.com/libre-lyrics/librelyrics-spotify)
MODPY_DISTV =		0.1.2.5
DISTNAME =		syrics-${MODPY_DISTV}
CATEGORIES =		textproc audio

HOMEPAGE =		https://github.com/akashrchandran/syrics

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

NO_TEST =		Yes

RUN_DEPENDS =		audio/py-tinytag \
			devel/py-tqdm \
			www/py-requests \
			www/py-spotipy

.include <bsd.port.mk>

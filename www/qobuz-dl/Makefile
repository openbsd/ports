COMMENT =		music downloader for Qobuz

MODPY_EGG_VERSION =	0.9.9.10

DISTNAME =		qobuz-dl-${MODPY_EGG_VERSION}

CATEGORIES =		www audio

HOMEPAGE =		https://github.com/vitiko98/Qobuz-DL

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		audio/py-mutagen${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR} \
			devel/py-pathvalidate${MODPY_FLAVOR} \
			devel/py-pick${MODPY_FLAVOR} \
			devel/py-tqdm${MODPY_FLAVOR} \
			www/py-beautifulsoup4${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# tests don't exist
NO_TEST =		Yes

FIX_CRLF_FILES =	qobuz_dl/qopy.py

.include <bsd.port.mk>

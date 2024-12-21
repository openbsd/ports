COMMENT =		music downloader for Qobuz

MODPY_DISTV =	0.9.9.10

DISTNAME =		qobuz-dl-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		www audio

HOMEPAGE =		https://github.com/vitiko98/Qobuz-DL

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		audio/py-mutagen \
			devel/py-colorama \
			devel/py-pathvalidate \
			devel/py-pick \
			devel/py-tqdm \
			www/py-beautifulsoup4 \
			www/py-requests

# tests don't exist
NO_TEST =		Yes

FIX_CRLF_FILES =	qobuz_dl/qopy.py

.include <bsd.port.mk>

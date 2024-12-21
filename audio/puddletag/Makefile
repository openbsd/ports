COMMENT =		spreadsheet-like audio file tagger

MODPY_DISTV =	2.4.0
DISTNAME =		puddletag-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		audio

HOMEPAGE =		https://docs.puddletag.net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
NO_TEST =		Yes

# wants levenshtein
RUN_DEPENDS =		audio/py-acoustid \
			audio/py-mutagen \
			devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-parsing \
			textproc/py-lxml \
			textproc/py-unidecode \
			x11/py-qt5

.include <bsd.port.mk>

COMMENT =		spreadsheet-like audio file tagger

MODPY_EGG_VERSION =	2.4.0
DISTNAME =		puddletag-${MODPY_EGG_VERSION}

CATEGORIES =		audio

HOMEPAGE =		https://docs.puddletag.net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
NO_TEST =		Yes

# wants levenshtein
RUN_DEPENDS =		audio/py-acoustid${MODPY_FLAVOR} \
			audio/py-mutagen${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			textproc/py-unidecode${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

.include <bsd.port.mk>

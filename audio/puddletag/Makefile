COMMENT =		spreadsheet-like audio file tagger

MODPY_EGG_VERSION =	2.1.1
DISTNAME =		puddletag-${MODPY_EGG_VERSION}

CATEGORIES =		audio

HOMEPAGE =		https://docs.puddletag.net

# GPLv3
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		audio/py-mutagen${MODPY_FLAVOR} \
			devel/desktop-file-utils \
			devel/py-configobj${MODPY_FLAVOR} \
			devel/py-parsing${MODPY_FLAVOR} \
			x11/py-qt5${MODPY_FLAVOR}

# Author didn't write tests
NO_TEST =		Yes

post-install:
	mv ${PREFIX}/share/man/man1/puddletag.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>

COMMENT =	python package to retrieve data of the IMDb movie database

PORTROACH =	site:https://github.com/alberanid/imdbpy/releases/

MODPY_EGG_VERSION = 2021.4.18
DISTNAME =	IMDbPY-${MODPY_EGG_VERSION}
PKGNAME =	py-imdb-${MODPY_EGG_VERSION}
REVISION =	1

CATEGORIES =	misc devel

HOMEPAGE =	https://imdbpy.github.io/

MAINTAINER =	Todd C. Miller <millert@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread ${MODPY_WANTLIB}

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-lxml${MODPY_FLAVOR} \
		databases/py-sqlalchemy${MODPY_FLAVOR}

NO_TEST =	Yes

.include <bsd.port.mk>

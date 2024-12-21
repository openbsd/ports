COMMENT =	python package to access the IMDb movie database

PORTROACH =	site:https://github.com/cinemagoer/cinemagoer/releases/

MODPY_DISTV =	2023.5.1
DISTNAME =	cinemagoer-${MODPY_DISTV}
PKGNAME =	py-imdb-${MODPY_DISTV}
REVISION =	1

CATEGORIES =	misc devel

HOMEPAGE =	https://cinemagoer.github.io/

MAINTAINER =	Todd C. Miller <millert@openbsd.org>

# GPL
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread ${MODPY_WANTLIB}

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	textproc/py-lxml \
		databases/py-sqlalchemy

NO_TEST =	Yes

.include <bsd.port.mk>

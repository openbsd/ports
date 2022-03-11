COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	1.4
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
CATEGORIES =		astro
REVISION =		1

HOMEPAGE =		https://www.schwarzvogel.de/software/pymetar/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://www.schwarzvogel.de/pkgs/

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

NO_TEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_DISTV =	1.4
DISTNAME =		pymetar-${MODPY_DISTV}
PKGNAME =		py-metar-${MODPY_DISTV}
CATEGORIES =		astro
REVISION =		5

HOMEPAGE =		https://www.schwarzvogel.de/software/pymetar/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =			https://www.schwarzvogel.de/pkgs/

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

NO_TEST =		Yes

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

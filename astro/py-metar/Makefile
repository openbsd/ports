# $OpenBSD: Makefile,v 1.28 2020/07/03 21:12:34 sthen Exp $

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	1.1
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
CATEGORIES =		astro
REVISION =		0

HOMEPAGE =		https://www.schwarzvogel.de/software-pymetar.shtml

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.schwarzvogel.de/pkgs/

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

NO_TEST =	Yes

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

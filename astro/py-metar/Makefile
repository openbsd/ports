# $OpenBSD: Makefile,v 1.25 2019/04/27 23:24:01 sthen Exp $

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	0.21
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
CATEGORIES =		astro

HOMEPAGE =		http://www.schwarzvogel.de/software-pymetar.shtml

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://www.schwarzvogel.de/pkgs/

MODULES =	lang/python

NO_TEST =	Yes

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

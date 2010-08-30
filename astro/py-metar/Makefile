# $OpenBSD: Makefile,v 1.15 2010/08/30 16:48:31 fgsch Exp $

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	0.16
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
REVISION =		0
CATEGORIES =		astro

HOMEPAGE =		http://www.schwarzvogel.de/software-pymetar.shtml

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.schwarzvogel.de/pkgs/

MODULES =	lang/python

NO_REGRESS =	Yes

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

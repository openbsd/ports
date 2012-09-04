# $OpenBSD: Makefile,v 1.21 2012/09/04 15:47:37 ajacoutot Exp $

COMMENT =	Python module to access NOAA's METAR weather reports

MODPY_EGG_VERSION =	0.19
DISTNAME =		pymetar-${MODPY_EGG_VERSION}
PKGNAME =		py-metar-${MODPY_EGG_VERSION}
CATEGORIES =		astro
REVISION =		0

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
PKG_ARCH =	*

pre-build:
	cp ${WRKSRC}/bin/pymetar ${WRKSRC}/bin/pymet

.include <bsd.port.mk>

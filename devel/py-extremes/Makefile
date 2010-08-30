# $OpenBSD: Makefile,v 1.2 2010/08/30 22:24:15 jasper Exp $

COMMENT =		mix and max objects

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		Extremes-${MODPY_EGG_VERSION}
PKGNAME =		py-extremes-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/Extremes

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=E/Extremes/}
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-extremes
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-extremes

.include <bsd.port.mk>

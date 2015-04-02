# $OpenBSD: Makefile,v 1.8 2015/04/02 14:21:13 jasper Exp $

COMMENT =		extend python objects with addons

MODPY_EGG_VERSION =	0.7
DISTNAME =		AddOns-${MODPY_EGG_VERSION}
PKGNAME =		py-addons-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/AddOns

MAINTAINER =		Martynas Venckus <martynas@openbsd.org>

# PSF or ZPL
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
EXTRACT_SUFX =		.zip
UNZIP =			unzip -a

MODULES =		lang/python
RUN_DEPENDS =		devel/py-decoratortools
BUILD_DEPENDS =		${RUN_DEPENDS}

MODPY_SETUPTOOLS =	Yes

post-extract:
	@find ${WRKSRC} -type f -exec chmod 644 {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-addons
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/py-addons/

.include <bsd.port.mk>

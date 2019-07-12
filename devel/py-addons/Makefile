# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:17 sthen Exp $

COMMENT =		extend python objects with addons

MODPY_EGG_VERSION =	0.7
DISTNAME =		AddOns-${MODPY_EGG_VERSION}
PKGNAME =		py-addons-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel


# PSF or ZPL
PERMIT_PACKAGE =	Yes

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

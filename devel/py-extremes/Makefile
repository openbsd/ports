# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:48 sthen Exp $

COMMENT =		mix and max objects

MODPY_EGG_VERSION =	1.1.1
DISTNAME =		Extremes-${MODPY_EGG_VERSION}
PKGNAME =		py-extremes-${MODPY_EGG_VERSION}
REVISION =		5

CATEGORIES =		devel


# PSF
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
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

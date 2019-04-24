# $OpenBSD: Makefile,v 1.9 2019/04/24 16:26:56 sthen Exp $

COMMENT =		losslessly convert images to PDF
MODPY_EGG_VERSION =	0.2.4
DISTNAME =		img2pdf-${MODPY_EGG_VERSION}
CATEGORIES =		graphics
HOMEPAGE =		https://gitlab.mister-muffin.de/josch/img2pdf/
REVISION =		0

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

RUN_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR}
TEST_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR}

.include <bsd.port.mk>

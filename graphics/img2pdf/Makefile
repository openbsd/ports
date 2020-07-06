# $OpenBSD: Makefile,v 1.14 2020/07/06 10:07:44 sthen Exp $

COMMENT =		losslessly convert images to PDF

MODPY_EGG_VERSION =	0.3.6
DISTNAME =		img2pdf-${MODPY_EGG_VERSION}

CATEGORIES =		graphics

HOMEPAGE =		https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

# some tests fail as they require pdfrw (overall this is optional for
# img2pdf and autodetected at runtime; we don't have it in ports yet)
RUN_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR}
TEST_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR}

.include <bsd.port.mk>

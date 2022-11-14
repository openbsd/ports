COMMENT =		losslessly convert images to PDF

MODPY_EGG_VERSION =	0.4.4
DISTNAME =		img2pdf-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		graphics

HOMEPAGE =		https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR}

# some tests fail as they require pdfrw (overall this is optional for
# img2pdf and autodetected at runtime; we don't have it in ports yet)
TEST_DEPENDS =		sysutils/py-packaging${MODPY_FLAVOR} \
			math/py-scipy${MODPY_FLAVOR} \
			graphics/p5-Image-ExifTool

.include <bsd.port.mk>

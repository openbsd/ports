COMMENT =		losslessly convert images to PDF

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		img2pdf-${MODPY_EGG_VERSION}

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
TEST_DEPENDS =		graphics/colord \
			graphics/p5-Image-ExifTool \
			math/py-scipy${MODPY_FLAVOR} \
			sysutils/coreutils \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/mupdf

pre-test:
	ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

.include <bsd.port.mk>

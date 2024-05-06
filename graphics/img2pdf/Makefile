COMMENT =		losslessly convert images to PDF

MODPY_EGG_VERSION =	0.5.1
DISTNAME =		img2pdf-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		graphics

HOMEPAGE =		https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		graphics/py-Pillow${MODPY_FLAVOR} \
			print/py-pikepdf${MODPY_FLAVOR}

# assert failures in some compare_ghostscript tests
TEST_DEPENDS =		graphics/colord \
			graphics/p5-Image-ExifTool \
			math/py-scipy${MODPY_FLAVOR} \
			print/ghostscript/gnu \
			sysutils/coreutils \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/mupdf

pre-test:
	ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

.include <bsd.port.mk>

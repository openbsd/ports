COMMENT=	losslessly convert images to PDF

MODPY_DISTV=	0.6.3
DISTNAME=	img2pdf-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	graphics

HOMEPAGE=	https://gitlab.mister-muffin.de/josch/img2pdf/

# LGPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	graphics/py-Pillow \
		print/py-pikepdf

# assert failures in some compare_ghostscript tests
TEST_DEPENDS=	graphics/colord \
		graphics/p5-Image-ExifTool \
		math/py-scipy \
		print/ghostscript/gnu \
		sysutils/coreutils \
		sysutils/py-packaging \
		textproc/mupdf

pre-test:
	ln -fs ${LOCALBASE}/bin/gdate ${WRKDIR}/bin/date

.include <bsd.port.mk>

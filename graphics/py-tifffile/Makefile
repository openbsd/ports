COMMENT=	read images/metadiff and store numpy arrays in TIFF files

MODPY_DISTV =	2026.2.24
DISTNAME=	tifffile-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	graphics

HOMEPAGE=	https://github.com/cgohlke/tifffile

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	math/py-numpy
FIX_CRLF_FILES=	tests/test_tifffile.py
MODPY_PYTEST_ARGS=	-v -m 'not SKIP_LARGE'

pre-test:
	# avoids creating large files in /tmp
	mkdir -p ${WRKSRC}/tests/_tmp

.include <bsd.port.mk>

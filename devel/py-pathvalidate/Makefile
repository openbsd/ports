COMMENT=	library to sanitize/validate paths

MODPY_DISTV=	3.2.3
DISTNAME=	pathvalidate-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/thombashi/pathvalidate

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

# missing deps: tcolorpy, allpairspy
MODPY_PYTEST_ARGS= --ignore test/test_common.py \
		   --ignore test/test_filename.py \
		   --ignore test/test_filepath.py

.include <bsd.port.mk>

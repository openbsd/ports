COMMENT=	library to resolve JSON Pointers according to RFC 6901

MODPY_DISTV=	3.10
DISTNAME=	jsonpointer-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	https://github.com/stefankoegl/python-json-pointer

# BSD-3-Clause
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

MODPY_PYTEST_ARGS= tests.py

.include <bsd.port.mk>

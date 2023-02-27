COMMENT=	Python module for decorators, wrappers and monkey patching

MODPY_EGG_VERSION=	1.15.0
DISTNAME=	wrapt-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# https://github.com/GrahamDumpleton/wrapt
HOMEPAGE=	https://wrapt.readthedocs.org/en/latest/

WANTLIB += pthread ${MODPY_WANTLIB}

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>

COMMENT=	introspect/set max threads in native libraries like BLAS

MODPY_DISTV=	3.6.0
GH_ACCOUNT=	joblib
GH_PROJECT=	threadpoolctl
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/joblib/threadpoolctl

# BSD-3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PYTEST_ARGS= -v

.include <bsd.port.mk>

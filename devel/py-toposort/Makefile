COMMENT=	implements a topological sort algorithm

MODPY_DISTV=	1.10
DISTNAME=	toposort-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	devel

HOMEPAGE=	https://gitlab.com/ericvsmith/toposort

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

do-test:
	PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} ${WRKSRC}/test/test_toposort.py

.include <bsd.port.mk>

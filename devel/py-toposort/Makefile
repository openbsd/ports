COMMENT=	implements a topological sort algorithm

MODPY_EGG_VERSION=	1.10
DISTNAME=	toposort-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	https://gitlab.com/ericvsmith/toposort

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

FLAVORS=	python3
FLAVOR=		python3

do-test:
	PYTHONPATH=${WRKSRC}/src ${MODPY_BIN} ${WRKSRC}/test/test_toposort.py

.include <bsd.port.mk>

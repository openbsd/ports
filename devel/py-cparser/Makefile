COMMENT=	C parser in pure Python

MODPY_EGG_VERSION=	2.21
DISTNAME=	pycparser-${MODPY_EGG_VERSION}
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel textproc
REVISION=	0

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python
FLAVORS=	python3
FLAVOR=		python3

xdo-test:
	cd ${WRKSRC} && ${MODPY_BIN} tests/all_tests.py

.include <bsd.port.mk>

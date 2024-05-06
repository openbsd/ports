COMMENT =		early-algorithm context-free grammar parser

MODPY_EGG_VERSION =	1.8.9
DISTNAME =		spark_parser-${MODPY_EGG_VERSION}
PKGNAME =		py-spark-parser-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/rocky/python-spark/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	test

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

post-install:
	mv ${PREFIX}/bin/spark-parser-coverage{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>

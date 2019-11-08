# $OpenBSD: Makefile,v 1.11 2019/11/08 17:16:36 kmos Exp $

COMMENT =		early-algorithm context-free grammar parser

MODPY_EGG_VERSION =	1.6.1
DISTNAME =		spark_parser-${MODPY_EGG_VERSION}
PKGNAME =		py-spark-parser-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		2

HOMEPAGE =		https://github.com/rocky/python-spark/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	test

RUN_DEPENDS =		devel/py-click${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/spark-parser-coverage{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>

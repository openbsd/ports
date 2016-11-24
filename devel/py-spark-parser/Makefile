# $OpenBSD: Makefile,v 1.2 2016/11/24 15:48:46 shadchin Exp $

COMMENT =		early-algorithm context-free grammar parser

MODPY_EGG_VERSION =	1.4.3
DISTNAME =		spark_parser-${MODPY_EGG_VERSION}
PKGNAME =		py-spark-parser-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-spark/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} test/*.py

.include <bsd.port.mk>

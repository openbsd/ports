# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:50 sthen Exp $

COMMENT =	pretty-print tabular data

MODPY_EGG_VERSION =	0.8.7
DISTNAME =	tabulate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astanin/python-tabulate

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/tabulate ${PREFIX}/bin/tabulate${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>

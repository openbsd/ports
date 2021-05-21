# $OpenBSD: Makefile,v 1.7 2021/05/21 19:50:30 kmos Exp $

COMMENT =	pretty-print tabular data

MODPY_EGG_VERSION =	0.8.7
DISTNAME =	tabulate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

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

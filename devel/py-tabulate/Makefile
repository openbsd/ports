# $OpenBSD: Makefile,v 1.3 2019/07/12 20:45:54 sthen Exp $

COMMENT =	pretty-print tabular data

MODPY_EGG_VERSION =	0.8.2
DISTNAME =	tabulate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/astanin/python-tabulate

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

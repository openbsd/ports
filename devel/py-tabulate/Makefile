# $OpenBSD: Makefile,v 1.1.1.1 2018/03/08 09:08:11 rpointel Exp $

COMMENT =	pretty-print tabular data

MODPY_EGG_VERSION =	0.8.2
DISTNAME =	tabulate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

HOMEPAGE =	https://bitbucket.org/astanin/python-tabulate

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes

FLAVORS =	python3
FLAVOR ?=

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/tabulate ${PREFIX}/bin/tabulate${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>

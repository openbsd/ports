COMMENT =	pretty-print tabular data

# 0.9 drops py2 support, still needed for security/floss
MODPY_EGG_VERSION =	0.8.10
DISTNAME =	tabulate-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astanin/python-tabulate

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes
MODPY_PI =	Yes
MODPY_PYTEST =	Yes

FLAVORS =	python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/tabulate ${PREFIX}/bin/tabulate${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>

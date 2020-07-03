# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:45 sthen Exp $

COMMENT =		Python utility / library to sort Python imports

MODPY_EGG_VERSION =	4.2.15
DISTNAME =		isort-${MODPY_EGG_VERSION}
PKGNAME =		py-isort-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		devel

HOMEPAGE =		https://github.com/timothycrosley/isort

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/isort{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>

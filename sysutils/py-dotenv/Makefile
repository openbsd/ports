# $OpenBSD: Makefile,v 1.5 2021/11/14 12:57:37 sthen Exp $

COMMENT =	handle .env files

MODPY_EGG_VERSION =	0.19.2

DISTNAME =	python-dotenv-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/python-/py-/}

CATEGORIES =	sysutils

HOMEPAGE =	https://github.com/pedroburon/dotenv

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-sh${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR}

.include <bsd.port.mk>

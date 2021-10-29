# $OpenBSD: Makefile,v 1.13 2021/10/29 15:38:48 sthen Exp $

COMMENT =		virtualenv-based automation of test activities

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		tox-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		4

HOMEPAGE =		https://tox.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-py${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =	python3

# some tests need HOME to be writable
PORTHOME =		/tmp

.include <bsd.port.mk>

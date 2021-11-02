# $OpenBSD: Makefile,v 1.13 2021/11/02 00:00:17 sthen Exp $

COMMENT =		fixed size round-robin style database

MODPY_EGG_VERSION =	1.1.7

DISTNAME =		whisper-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		databases
REVISION =		0

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		net/py-rrdtool${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2021/02/21 16:01:05 sthen Exp $

COMMENT =		snowball stemming library collection for Python

MODPY_EGG_VERSION =	2.1.0
DISTNAME =		snowballstemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-stemmer${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

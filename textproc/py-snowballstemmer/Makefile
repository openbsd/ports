# $OpenBSD: Makefile,v 1.9 2021/02/18 22:26:47 sthen Exp $

COMMENT =		snowball stemming library collection for Python

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		snowballstemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		textproc/py-stemmer${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

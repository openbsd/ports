# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:16 sthen Exp $

COMMENT =		snowball stemming library collection for Python

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		snowballstemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		textproc/py-stemmer${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>

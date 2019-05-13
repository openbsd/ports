# $OpenBSD: Makefile,v 1.4 2019/05/13 19:03:53 danj Exp $

COMMENT =		snowball stemming library collection for Python

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		snowballstemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		textproc

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		textproc/py-stemmer${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>

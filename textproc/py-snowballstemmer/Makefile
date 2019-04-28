# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:57 sthen Exp $

COMMENT =		snowball stemming library collection for Python

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		snowballstemmer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		textproc

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		textproc/py-stemmer${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>

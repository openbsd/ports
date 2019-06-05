# $OpenBSD: Makefile,v 1.1.1.1 2019/06/05 19:44:18 jasper Exp $

COMMENT =		module to read and work with PE files

MODPY_EGG_VERSION =	2018.8.8
DISTNAME =		pefile-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/erocarrera/pefile

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-future${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>

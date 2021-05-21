# $OpenBSD: Makefile,v 1.6 2021/05/21 19:50:27 kmos Exp $

COMMENT =		implementation of time.monotonic()

MODPY_EGG_VERSION =	1.5
DISTNAME =		monotonic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/atdt/monotonic

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.5 2021/02/23 19:39:19 sthen Exp $

COMMENT =		implementation of time.monotonic()

MODPY_EGG_VERSION =	1.5
DISTNAME =		monotonic-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/atdt/monotonic

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

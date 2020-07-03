# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:40 sthen Exp $

COMMENT =		timeout context manager for asyncio programs

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		async-timeout-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# requires newer py-test and py-test-aiohttp
NO_TEST =		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.8 2022/02/22 04:22:20 bket Exp $

COMMENT =		timeout context manager for asyncio programs

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		async-timeout-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		3

CATEGORIES =		devel

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# requires newer py-test and py-test-aiohttp
NO_TEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>

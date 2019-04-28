# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:30 sthen Exp $

COMMENT =		timeout context manager for asyncio programs

MODPY_EGG_VERSION =	3.0.0
DISTNAME =		async-timeout-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# requires newer py-test and py-test-aiohttp
NO_TEST =		Yes

.include <bsd.port.mk>

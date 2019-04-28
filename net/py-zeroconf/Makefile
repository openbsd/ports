# $OpenBSD: Makefile,v 1.3 2019/04/28 20:51:46 sthen Exp $

COMMENT =		pure Python Multicast DNS Service Discovery Library

MODPY_EGG_VERSION =	0.21.3
DISTNAME =		zeroconf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		net

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/py-ifaddr${MODPY_FLAVOR}

.include <bsd.port.mk>

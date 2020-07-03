# $OpenBSD: Makefile,v 1.7 2020/07/03 21:13:03 sthen Exp $

COMMENT =		pure Python Multicast DNS Service Discovery Library

MODPY_EGG_VERSION =	0.24.4
DISTNAME =		zeroconf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		net

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS ?=		python3
FLAVOR=			python3

RUN_DEPENDS =		net/py-ifaddr${MODPY_FLAVOR}

.include <bsd.port.mk>

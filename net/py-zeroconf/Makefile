# $OpenBSD: Makefile,v 1.5 2020/01/16 09:49:31 gonzalo Exp $

COMMENT =		pure Python Multicast DNS Service Discovery Library

MODPY_EGG_VERSION =	0.24.4
DISTNAME =		zeroconf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# LGPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/py-ifaddr${MODPY_FLAVOR}

.include <bsd.port.mk>

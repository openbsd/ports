# $OpenBSD: Makefile,v 1.3 2020/07/03 21:12:41 sthen Exp $

COMMENT =	Python3 interface to the Bitcoin data structure and protocol

MODPY_EGG_VERSION =	0.11.0

DISTNAME =		python-bitcoinlib-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/petertodd/python-bitcoinlib

MAINTAINER =		Clem Atis <clematis@insiberia.net>

# LGPLv3
PERMIT_PACKAGE =	yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>

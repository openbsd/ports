# $OpenBSD: Makefile,v 1.5 2021/11/02 00:00:26 sthen Exp $

COMMENT =	Python3 interface to the Bitcoin data structure and protocol

MODPY_EGG_VERSION =	0.11.0

DISTNAME =		python-bitcoinlib-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/petertodd/python-bitcoinlib

MAINTAINER =		Clem Atis <clematis@insiberia.net>

# LGPLv3
PERMIT_PACKAGE =	yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>

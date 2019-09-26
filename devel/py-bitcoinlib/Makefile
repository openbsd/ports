# $OpenBSD: Makefile,v 1.1.1.1 2019/09/26 21:49:36 kmos Exp $

COMMENT =	Python3 interface to the Bitcoin data structure and protocol

MODPY_EGG_VERSION =	0.10.2

DISTNAME =		python-bitcoinlib-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/^python-/py-/}

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

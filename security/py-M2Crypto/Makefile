# $OpenBSD: Makefile,v 1.30 2021/01/04 14:06:37 sthen Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.36.0
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

MAKE_ENV =		SWIG_FEATURES=-I/usr/include

BUILD_DEPENDS =		devel/swig

.include <bsd.port.mk>

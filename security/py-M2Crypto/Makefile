# $OpenBSD: Makefile,v 1.27 2020/07/03 21:13:05 sthen Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.35.2
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
FLAVOR ?=

MAKE_ENV =		SWIG_FEATURES=-I/usr/include

BUILD_DEPENDS =		devel/swig

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		devel/py-typing
.endif

.include <bsd.port.mk>

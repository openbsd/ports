# $OpenBSD: Makefile,v 1.22 2019/04/28 20:51:51 sthen Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.31.0
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

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

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>

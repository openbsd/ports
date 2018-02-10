# $OpenBSD: Makefile,v 1.16 2018/02/10 08:40:55 ajacoutot Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.28.2
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

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

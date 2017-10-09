# $OpenBSD: Makefile,v 1.15 2017/10/09 05:57:38 ajacoutot Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.27.0
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

MAKE_ENV =		SWIG_FEATURES=-I/usr/include

BUILD_DEPENDS =		devel/swig

RUN_DEPENDS =		devel/py-typing
TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>

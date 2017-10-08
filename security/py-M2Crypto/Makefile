# $OpenBSD: Makefile,v 1.14 2017/10/08 17:00:58 ajacoutot Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.26.0
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/swig

RUN_DEPENDS =		devel/py-typing

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.12 2016/08/23 12:58:28 ajacoutot Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.25.1
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		https://gitlab.com/m2crypto/m2crypto

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/swig

RUN_DEPENDS =		devel/py-typing

.include <bsd.port.mk>

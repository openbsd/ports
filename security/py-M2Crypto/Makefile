# $OpenBSD: Makefile,v 1.8 2015/10/25 15:29:13 rpe Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.22.5
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

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

.include <bsd.port.mk>

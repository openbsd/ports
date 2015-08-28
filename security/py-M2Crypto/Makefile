# $OpenBSD: Makefile,v 1.6 2015/08/28 16:29:56 jca Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.22.3
REVISION =		0
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/M2Crypto/M2Crypto

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/swig

.include <bsd.port.mk>

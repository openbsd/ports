# $OpenBSD: Makefile,v 1.9 2016/02/05 14:58:45 rpe Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.23.0
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

pre-test:
	mkdir ${WRKSRC}/build
	cd ${WRKSRC}/build && \
		ln -fs ../lib.openbsd-$$(uname -r)-$$(machine)-${MODPY_VERSION}

.include <bsd.port.mk>

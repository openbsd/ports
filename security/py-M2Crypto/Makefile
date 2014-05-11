# $OpenBSD: Makefile,v 1.2 2014/05/11 21:14:38 sthen Exp $

COMMENT =		crypto and ssl toolkit for python

MODPY_EGG_VERSION =	0.21.1
DISTNAME =		M2Crypto-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		http://chandlerproject.org/Projects/MeTooCrypto

MAINTAINER =		Robert Peichaer <rpe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		crypto pthread ssl ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_PYPI:=M/M2Crypto/}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

BUILD_DEPENDS =		devel/swig

# XXX don't allow the build to "succeed" unless the module is usable;
# M2Crypto has problems with api changes in libressl
post-build:
	${MODPY_TEST_TARGET} --test-suite=tests.test_rand

.include <bsd.port.mk>

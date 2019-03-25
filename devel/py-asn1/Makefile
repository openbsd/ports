# $OpenBSD: Makefile,v 1.29 2019/03/25 14:29:50 kn Exp $

COMMENT =	ASN.1 library for Python

MODPY_EGG_VERSION =	0.3.7
DISTNAME =		pyasn1-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*
EPOCH =			0

HOMEPAGE =		https://github.com/etingof/pyasn1

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

do-test: fake
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>

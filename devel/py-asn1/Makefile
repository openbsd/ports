# $OpenBSD: Makefile,v 1.35 2020/07/03 21:12:40 sthen Exp $

COMMENT =	ASN.1 library for Python

MODPY_EGG_VERSION =	0.4.8
DISTNAME =		pyasn1-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
EPOCH =			0
REVISION =		0

HOMEPAGE =		https://github.com/etingof/pyasn1

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>

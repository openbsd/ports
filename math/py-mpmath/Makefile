# $OpenBSD: Makefile,v 1.1.1.1 2017/02/19 19:02:43 shadchin Exp $

COMMENT =		library for arbitrary-precision floating-point arithmetic

MODPY_EGG_VERSION =	0.19
DISTNAME =		mpmath-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		math

HOMEPAGE =		http://mpmath.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest mpmath

.include <bsd.port.mk>

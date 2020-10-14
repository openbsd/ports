# $OpenBSD: Makefile,v 1.7 2020/10/14 18:45:22 kmos Exp $

COMMENT =		fast implementation of the Cassowary constraint solver

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		kiwisolver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

# C++11
COMPILER =		base-clang ports-gcc ports-clang

WANTLIB =	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR  =	python3

BUILD_DEPENDS =		devel/py-cppy${MODPY_FLAVOR}

.include <bsd.port.mk>

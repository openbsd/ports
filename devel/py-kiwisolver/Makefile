# $OpenBSD: Makefile,v 1.6 2020/10/11 19:37:30 daniel Exp $

COMMENT =		fast implementation of the Cassowary constraint solver

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		kiwisolver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR  =	python3

BUILD_DEPENDS =		devel/py-cppy${MODPY_FLAVOR}

.include <bsd.port.mk>

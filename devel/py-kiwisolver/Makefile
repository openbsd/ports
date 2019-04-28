# $OpenBSD: Makefile,v 1.2 2019/04/28 20:51:34 sthen Exp $

COMMENT =		fast implementation of the Cassowary constraint solver

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		kiwisolver-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>

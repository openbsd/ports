# $OpenBSD: Makefile,v 1.39 2022/01/05 09:46:25 kn Exp $

COMMENT =	C++-native, header-only, test framework for unit-tests

GH_ACCOUNT =	catchorg
GH_PROJECT =	Catch2
GH_TAGNAME =	v2.13.8
PKGNAME =	${DISTNAME:L}
REVISION =	0

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Boost
PERMIT_PACKAGE =	Yes

# C++11 / C++14
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_RUNDEP =		No

# just header files
PKG_ARCH =		*

# compile tests only when testing
NO_BUILD =		Yes

pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

pre-test:
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>

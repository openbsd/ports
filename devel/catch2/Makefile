# $OpenBSD: Makefile,v 1.26 2020/05/26 05:32:53 rsadowski Exp $

COMMENT =	C++-native, header-only, test framework for unit-tests

GH_ACCOUNT =	catchorg
GH_PROJECT =	Catch2
GH_TAGNAME =	v2.12.2

DISTNAME =	catch2-${GH_TAGNAME:S/v//}

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Boost
PERMIT_PACKAGE =	Yes

# C++11 / C++14
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_RUNDEP =		No

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>

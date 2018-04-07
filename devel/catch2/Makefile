# $OpenBSD: Makefile,v 1.5 2018/04/07 09:43:23 rsadowski Exp $

COMMENT =	C++-native, header-only, test framework for unit-tests

GH_ACCOUNT =	catchorg
GH_PROJECT =	Catch2
GH_TAGNAME =	v2.2.2

DISTNAME =	catch2-${GH_TAGNAME:S/v//}

CATEGORIES =	devel

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# Boost
PERMIT_PACKAGE_CDROM =	Yes

# C++11 / C++14
COMPILER =		base-clang ports-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

MODPY_BUILDDEP =	No
MODPY_RUNDEP =		No
TEST_DEPENDS =		lang/python/${MODPY_DEFAULT_VERSION_2}

pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

.include <bsd.port.mk>

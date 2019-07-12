# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:06 sthen Exp $

COMMENT =		C++ parser for the HOCON configuration language

GH_TAGNAME =		0.2.0
GH_ACCOUNT =		puppetlabs
GH_PROJECT =		cpp-hocon
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

SHARED_LIBS =		cpp-hocon	0.0

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake
WANTLIB =  ${COMPILER_LIBCXX} m
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt boost_locale-mt
WANTLIB += boost_program_options-mt boost_system-mt boost_thread-mt
WANTLIB += leatherman_locale leatherman_util


COMPILER =		base-clang ports-gcc

CXXFLAGS +=		-pthread -Wno-delete-non-virtual-dtor

LIB_DEPENDS =		devel/boost \
			devel/leatherman

BUILD_DEPENDS =		devel/gettext,-tools

# test cases:  112 |   82 passed | 16 failed | 14 failed as expected                    
# assertions: 1718 | 1660 passed | 40 failed | 18 failed as expected                    

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=Yes

post-configure:
	sed -i 's/\<CPP_HOCON/LIB&/g' ${WRKSRC}/lib/inc/hocon/export.h

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.32 2019/11/07 08:36:31 sebastia Exp $

COMMENT =		collection of C++ and CMake utility libraries

GH_ACCOUNT =		puppetlabs
GH_PROJECT =		leatherman
GH_TAGNAME =		1.9.0

# N.B.: Upstream doesn't care about ABI, better just bump major on update
SHARED_LIBS =	leatherman_curl           1.1 # 0.12
SHARED_LIBS +=	leatherman_dynamic_library 1.0 # 0.12                                 
SHARED_LIBS +=	leatherman_execution      1.1 # 0.12                                  
SHARED_LIBS +=	leatherman_file_util      1.1 # 0.12                                  
SHARED_LIBS +=	leatherman_json_container 1.1 # 0.12                                  
SHARED_LIBS +=	leatherman_locale         1.0 # 0.12                                  
SHARED_LIBS +=	leatherman_logging        1.0 # 0.12                                  
SHARED_LIBS +=	leatherman_ruby           1.0 # 0.12                                  
SHARED_LIBS +=	leatherman_util           1.1 # 0.12                                  

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake lang/python
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	scripts/cpplint.py

WANTLIB =  ${COMPILER_LIBCXX} m
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt curl

LIB_DEPENDS =		devel/boost \
			net/curl

BUILD_DEPENDS =		devel/gettext,-tools
RUN_DEPENDS =		devel/gettext,-runtime

# needed for sysutils/facter
CONFIGURE_ARGS +=	-DLEATHERMAN_SHARED=Yes

# cmake tests are botched
CONFIGURE_ARGS +=	-DLEATHERMAN_ENABLE_TESTING:Bool=No

CXXFLAGS +=		-pthread

NO_TEST =		Yes

.include <bsd.port.mk>

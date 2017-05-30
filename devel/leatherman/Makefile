# $OpenBSD: Makefile,v 1.9 2017/05/30 18:01:27 zhuk Exp $

COMMENT =		collection of C++ and CMake utility libraries

GH_ACCOUNT =		puppetlabs
GH_PROJECT =		leatherman
GH_TAGNAME =		0.12.1
REVISION =		1

# N.B.: Upstream doesn't care about ABI, better just bump major on update
SHARED_LIBS =	leatherman_curl           0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_dynamic_library 0.0 # 0.12                                 
SHARED_LIBS +=	leatherman_execution      0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_file_util      0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_json_container 0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_locale         0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_logging        0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_ruby           0.0 # 0.12                                  
SHARED_LIBS +=	leatherman_util           0.0 # 0.12                                  

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

WANT_CXX =		base gcc
MODULES =		devel/cmake lang/python
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	${WRKSRC}/scripts/cpplint.py

WANTLIB =  ${LIBECXX} m
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_locale-mt boost_log-mt boost_log_setup-mt
WANTLIB += boost_regex-mt boost_system-mt boost_thread-mt curl

LIB_DEPENDS =		devel/boost \
			net/curl

BUILD_DEPENDS =		devel/gettext-tools
RUN_DEPENDS =		devel/gettext

# needed for sysutils/facter
CONFIGURE_ARGS +=	-DLEATHERMAN_SHARED=Yes

# cmake tests are botched
CONFIGURE_ARGS +=	-DLEATHERMAN_ENABLE_TESTING:Bool=No

CXXFLAGS +=		-pthread

NO_TEST =		Yes

.include <bsd.port.mk>

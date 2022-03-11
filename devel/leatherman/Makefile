COMMENT =		collection of C++ and CMake utility libraries

GH_ACCOUNT =		puppetlabs
GH_PROJECT =		leatherman
GH_TAGNAME =		1.12.7

# N.B.: Upstream doesn't care about ABI, better just bump major on update
SHARED_LIBS =	leatherman_curl             1.1 # 1.12.4
SHARED_LIBS +=	leatherman_dynamic_library  1.0 # 1.12.4
SHARED_LIBS +=	leatherman_execution        2.0 # 1.12.4
SHARED_LIBS +=	leatherman_file_util        1.1 # 1.12.4
SHARED_LIBS +=	leatherman_json_container   1.1 # 1.12.4
SHARED_LIBS +=	leatherman_locale           1.0 # 1.12.4
SHARED_LIBS +=	leatherman_logging          1.0 # 1.12.4
SHARED_LIBS +=	leatherman_ruby             1.0 # 1.12.4
SHARED_LIBS +=	leatherman_util             1.1 # 1.12.4

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_filesystem-mt boost_locale-mt
WANTLIB += boost_log-mt boost_log_setup-mt boost_nowide-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt curl m

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake lang/python
MODPY_RUNDEP =		No
MODPY_BUILDDEP =	No
MODPY_ADJ_FILES =	scripts/cpplint.py

LIB_DEPENDS =		devel/boost \
			net/curl

BUILD_DEPENDS =		devel/gettext,-tools
RUN_DEPENDS =		devel/gettext,-runtime

# needed for sysutils/facter
CONFIGURE_ARGS +=	-DLEATHERMAN_SHARED=Yes

# cmake tests are botched
CONFIGURE_ARGS +=	-DLEATHERMAN_ENABLE_TESTING=No

NO_TEST =		Yes

.include <bsd.port.mk>

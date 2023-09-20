COMMENT =		MariaDB module for TDBC

V =			1.1.5
N =			mysql

DISTNAME =		tdbc${N}${V}
PKGNAME =		tdbc-${N}-${V}
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}

MODULES =		lang/tcl \
			databases/mariadb

MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

# TEST_DEPENDS comes from databases/mariadb
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			${TEST_DEPENDS} \
			databases/tdbc

MAKE_ENV =		TDBCMYSQL_TEST_DB=${MODMARIADB_TEST_DBNAME}

FAKE_FLAGS =		PKG_DIR=tdbc${N} \
			PKG_HEADERS=''

TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc \
			--libdir=${MODTCL_TCLDIR}

TEST_TARGET =		test
SUBST_VARS =		VER

VER =			${V:S/.//g}

MODMARIADB_TEST_DBNAME = tdbc_${N}_test

# Use TESTFLAGS to control the Tdbc-mysql tests
TESTFLAGS =

.include <bsd.port.mk>

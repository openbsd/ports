COMMENT =		PostgreSQL module for TDBC

V =			1.1.5
N =			postgres

DISTNAME =		tdbc${N}${V}
PKGNAME =		tdbc-${N}-${V}
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}

MODULES =		lang/tcl \
			databases/postgresql

MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			${TEST_DEPENDS} \
			databases/tdbc

MAKE_ENV =		TDBCPOSTGRES_TEST_DB=${MODPOSTGRESQL_TEST_DBNAME}

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

MODPOSTGRESQL_TEST_DBNAME = tdbc_${N}_test

# Use TESTFLAGS to control the Tdbc-postgres tests
TESTFLAGS =

.include <bsd.port.mk>

COMMENT =		ODBC module for TDBC

V =			1.1.5
N =			odbc

DISTNAME =		tdbc${N}${V}
PKGNAME =		tdbc-${N}-${V}
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			databases/iodbc \
			databases/tdbc

TEST_DEPENDS =		databases/iodbc \
			databases/sqlite3-odbc

FAKE_FLAGS =		PKG_DIR=tdbc${N} \
			PKG_HEADERS=''

TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc \
			--libdir=${MODTCL_TCLDIR}

TEST_TARGET =		test-sqlite
SUBST_VARS =		VER

VER =			${V:S/.//g}

# Use TESTFLAGS to control the Tdbc-odbc tests
TESTFLAGS =

.include <bsd.port.mk>

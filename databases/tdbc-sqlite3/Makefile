COMMENT =		SQLite3 module for TDBC

V =			1.1.5

DISTNAME =		tdbcsqlite3-${V}
PKGNAME =		tdbc-sqlite3-${V}
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
			databases/tdbc \
			databases/sqlite3-tcl

TEST_DEPENDS =		databases/sqlite3-tcl
FAKE_FLAGS =		tmdir=${MODTCL_MODDIR}/${MODTCL_VERSION:S/.//}
TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc

TEST_TARGET =		test
NO_BUILD =		Yes

SUBST_VARS =		V

# Use TESTFLAGS to control the Tdbc-sqlite3 tests
TESTFLAGS =

.include <bsd.port.mk>

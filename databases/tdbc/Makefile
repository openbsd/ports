COMMENT =		Tcl Database Connectivity

V =			1.1.5

DISTNAME =		tdbc${V}
PKGNAME =		tdbc-${V}
SHARED_LIBS =		tdbc${VER} 0.0
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl-lang.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tdbc \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--includedir=${PREFIX}/include/tdbc \
			SHLIB_VERSION=${LIBtdbc${VER}_VERSION}

TEST_TARGET =		test
SUBST_VARS =		VER

VER =			${V:S/.//g}

# Use TESTFLAGS to control the Tdbc tests
TESTFLAGS =

.include <bsd.port.mk>

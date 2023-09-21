COMMENT =		thread extension for Tcl

V =			2.8.8
REVISION =		0

DISTNAME =		thread${V}
DISTFILES =		thread${V}-1{thread${V}}${EXTRACT_SUFX}
PKGNAME =		tclthread-${V}
SHARED_LIBS =		tclthread${VER} 0.0
CATEGORIES =		devel
HOMEPAGE =		http://tcl.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tclthread \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}' \
			PACKAGE_NAME=Thread

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			SHLIB_VERSION=${LIBtclthread${VER}_VERSION}

TEST_TARGET =		test
SUBST_VARS =		VER

VER =			${V:S/.//g}

# Use TESTFLAGS to control the Tclthread tests
TESTFLAGS =

.include <bsd.port.mk>

COMMENT =		thread extension for Tcl

V =			2.8.11

DISTNAME =		thread${V}
DISTFILES =		thread${V}-1{thread${V}}${EXTRACT_SUFX}
PKGNAME =		tclthread-${V}

CATEGORIES =		devel
HOMEPAGE =		https://tcl.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		0

# BSD
PERMIT_PACKAGE =	Yes

SITES =			${SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =		pkglibdir='$$(libdir)/tcl/thread'
TEST_FLAGS =		TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR}
INSTALL_TARGET =	all install-binaries install-doc
TEST_TARGET =		test
SUBST_VARS =		VER

VER =			${V:S/.//g}

# Use TESTFLAGS to control the Tclthread tests
TESTFLAGS =

.include <bsd.port.mk>

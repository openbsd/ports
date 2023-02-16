COMMENT =	Tcl bindings for Curl

V =		7.22.0

DISTNAME =	tclcurl-${V}
GH_ACCOUNT =	flightaware
GH_PROJECT =	tclcurl-fa
GH_COMMIT =	ed4856901dee2784ceeb6d2ee0d621fe05aa0134
CATEGORIES =	net
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	curl

MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
LIB_DEPENDS =	net/curl

FAKE_FLAGS =	PKG_DIR=tclcurl \
		INSTALL_LIBRARY='$$(INSTALL_DATA)'

TEST_FLAGS =	TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}

TEST_TARGET =	test
SUBST_VARS =	VER

VER =		${V:S/.//g}

# Use TESTFLAGS to control the TclCurl tests
TESTFLAGS =

pre-test:
	ln -sf ${WRKSRC}/generic/tclcurl.tcl ${WRKBUILD}/

.include <bsd.port.mk>

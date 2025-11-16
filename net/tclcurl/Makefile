COMMENT =	Tcl bindings for Curl

V =		7.22.0
REVISION =	0

DISTNAME =	tclcurl-${V}

GH_ACCOUNT =	flightaware
GH_PROJECT =	tclcurl-fa
GH_COMMIT =	76de9e92603e25738d5f8ae53436d95a00db77a6

CATEGORIES =	net
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =Yes

WANTLIB =	curl

MODULES =	lang/tcl
MODTCL_VERSION =8.6

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

# Test 1.06 is broken.
TESTFLAGS += -skip "1.06"

pre-test:
	ln -sf ${WRKSRC}/generic/tclcurl.tcl ${WRKBUILD}/

.include <bsd.port.mk>

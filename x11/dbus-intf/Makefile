COMMENT =	high level interface to dbus-tcl

V =		3.0

DISTNAME =	dbif-${V}
PKGNAME =	dbus-intf-${V}
CATEGORIES =	x11
HOMEPAGE =	https://chiselapp.com/user/schelte/repository/dbif/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =Yes

SITES =		${HOMEPAGE:=uv/}
MODULES =	lang/tcl
MODTCL_VERSION =8.6
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	x11/dbus-tcl
TEST_DEPENDS =	${RUN_DEPENDS}
TEST_FLAGS =	TCLSH_PROG='${LOCALBASE}/bin/dbus-run-session ${MODTCL_BIN}'
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--docdir='$${datarootdir}/doc/dbus-intf'

CONFIGURE_ENV+=	moduledir=${MODTCL_MODDIR}/${MTCL_VER}

WRKDIST =	${WRKDIR}/dbif-${V}
TEST_TARGET =	test
SUBST_VARS +=	V MTCL_VER

MTCL_VER =	${MODTCL_VERSION:S/.//g}

# Skip a test that needs tdom.
TEST_FLAGS +=	TESTFLAGS='-skip connect-1.5'

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/examples/hello.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-intf
	${INSTALL_SCRIPT} ${WRKSRC}/examples/hello.tcl \
		${PREFIX}/share/examples/dbus-intf

.include <bsd.port.mk>

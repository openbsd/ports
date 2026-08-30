COMMENT =	dbus bindings for Tcl ${MODTCL_COMMENT}

V =		4.2

DISTNAME =	dbus-${V}
PKGNAME =	dbus-tcl-${V}

CATEGORIES =	x11
HOMEPAGE =	https://chiselapp.com/user/schelte/repository/dbus/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE =Yes

WANTLIB =	dbus-1

SITES =		${HOMEPAGE:=uv/}

MODULES =	lang/tcl

BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} \
		devel/tcllib

LIB_DEPENDS =	x11/dbus
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	INSTALL_PROGRAM='$${INSTALL_DATA}' \
		PACKAGE_NAME=dbus-tcl \
		PACKAGE_TARNAME=dbus-tcl \
		pkglibdir='$$(libdir)/tcl/$$(PACKAGE_NAME)'

TEST_FLAGS =	TCLSH_PROG='${LOCALBASE}/bin/dbus-run-session ${MODTCL_BIN}' \
		TESTFLAGS='${TESTFLAGS}'

SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--mandir='$${prefix}/man'

WRKDIST =	${WRKDIR}/dbus${V}

TEST_TARGET =	test

SUBST_VARS =	VER MODTCL_EXTLIB MODTCL_EXT8 MODTCL_EXT9

VER =		${V:S/.//g}

# Use TESTFLAGS to control the Dbus-tcl tests
TESTFLAGS =

FLAVORS = tcl8
FLAVOR ?=

.if ${FLAVOR:Mtcl8}
MODTCL_VERSION =	8.6
.else
MODTCL_VERSION =	9
INSTALL_TARGET =	all install-lib-binaries
RUN_DEPENDS +=		x11/dbus-tcl,tcl8
.endif

.if ! ${FLAVOR:Mtcl8}
pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl

post-install:
	rm -f ${WRKINST}${MODTCL_TCLDIR}/dbus-tcl/pkgIndex.tcl
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-tcl
	${INSTALL_SCRIPT} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl \
		${PREFIX}/share/examples/dbus-tcl
.endif

.include <bsd.port.mk>

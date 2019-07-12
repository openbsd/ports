# $OpenBSD: Makefile,v 1.14 2019/07/12 20:51:09 sthen Exp $

COMMENT =	dbus bindings for Tcl

V =		2.2

DISTNAME =	dbus-${V}
PKGNAME =	dbus-tcl-${V}
CATEGORIES =	x11
HOMEPAGE =	https://chiselapp.com/user/schelte/repository/dbus/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =	0

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	dbus-1
MASTER_SITES =	${HOMEPAGE:=uv/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} devel/tcllib
LIB_DEPENDS =	x11/dbus
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	INSTALL_PROGRAM='$${INSTALL_DATA}' \
		PACKAGE_NAME=dbus-tcl \
		PACKAGE_TARNAME=dbus-tcl \
		pkglibdir='$$(libdir)/tcl/$$(PACKAGE_NAME)'

TEST_FLAGS =	TCLSH_PROG='${LOCALBASE}/bin/dbus-run-session ${MODTCL_BIN}'

SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--mandir='$${prefix}/man' \
		--enable-threads

WRKDIST =	${WRKDIR}/dbus-${V}
TEST_TARGET =	test
SUBST_VARS =	VER

VER =		${V:S/.//g}

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-tcl
	${INSTALL_SCRIPT} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl \
		${PREFIX}/share/examples/dbus-tcl

.include <bsd.port.mk>

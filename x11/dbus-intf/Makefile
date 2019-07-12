# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:09 sthen Exp $

COMMENT =	high level interface to dbus-tcl

V =		1.3

DISTNAME =	dbif-${V}
PKGNAME =	dbus-intf-${V}
CATEGORIES =	x11
HOMEPAGE =	https://chiselapp.com/user/schelte/repository/dbif/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =	0

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${HOMEPAGE:=uv/}
MODULES =	lang/tcl
BUILD_DEPENDS =	devel/tcllib
RUN_DEPENDS =	x11/dbus-tcl>=2.1
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--docdir='$${datarootdir}/doc/dbus-intf'

CONFIGURE_ENV+=	moduledir=${MODTCL_MODDIR}/85

NO_TEST =	Yes
WRKDIST =	${WRKDIR}/dbif-${V}
SUBST_VARS +=	V

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/examples/hello.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-intf
	${INSTALL_SCRIPT} ${WRKSRC}/examples/hello.tcl \
		${PREFIX}/share/examples/dbus-intf

.include <bsd.port.mk>

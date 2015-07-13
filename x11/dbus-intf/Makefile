# $OpenBSD: Makefile,v 1.4 2015/07/13 00:57:06 stu Exp $

COMMENT =	high level interface to dbus-tcl

V =		1.2
DISTNAME =	dbus-intf-${V}
CATEGORIES =	x11
HOMEPAGE =	http://dbus-tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dbus-tcl/}
DISTFILES =	dbus-intf{dbif}-${V}.tar.gz
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

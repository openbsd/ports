# $OpenBSD: Makefile,v 1.2 2012/08/26 17:04:49 stu Exp $

COMMENT =	dbus bindings for Tcl

DISTNAME =	dbus-tcl1.1
PKGNAME =	dbus-tcl-1.1
SHARED_LIBS =	dbus-tcl11 0.0
CATEGORIES =	x11
HOMEPAGE =	http://dbus-tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c dbus-1 pthread
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dbus-tcl/}
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} devel/tcllib
LIB_DEPENDS =	x11/dbus
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =	INSTALL_PROGRAM="${INSTALL_DATA}"
REGRESS_FLAGS =	LD_PRELOAD=/usr/lib/libpthread.so
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--mandir=${PREFIX}/man \
		--enable-threads \
		SHLIB_VERSION=${LIBdbus-tcl11_VERSION}

REGRESS_IS_INTERACTIVE = X11
REGRESS_TARGET = test

.include <bsd.port.mk>

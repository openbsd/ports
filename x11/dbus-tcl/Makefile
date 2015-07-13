# $OpenBSD: Makefile,v 1.6 2015/07/13 00:56:55 stu Exp $

SHARED_ONLY =	Yes

COMMENT =	dbus bindings for Tcl

V =		2.1
DISTNAME =	dbus-tcl-${V}
CATEGORIES =	x11
HOMEPAGE =	http://dbus-tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	dbus-1
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=dbus-tcl/}
DISTFILES =	dbus-tcl{dbus}-${V}.tar.gz
MODULES =	lang/tcl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS} devel/tcllib
LIB_DEPENDS =	x11/dbus
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	INSTALL_PROGRAM='$${INSTALL_DATA}' \
		PACKAGE_NAME=dbus-tcl \
		PACKAGE_TARNAME=dbus-tcl \
		pkglibdir='$$(libdir)/tcl/$$(PACKAGE_NAME)'

TEST_FLAGS =	LD_PRELOAD=/usr/lib/libpthread.so
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--mandir='$${prefix}/man' \
		--enable-threads

TEST_IS_INTERACTIVE = X11
WRKDIST =	${WRKDIR}/dbus-${V}
TEST_TARGET =	test

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus-tcl
	${INSTALL_SCRIPT} ${WRKSRC}/demos/{dbusmon,qdbus}.tcl \
		${PREFIX}/share/examples/dbus-tcl

.include <bsd.port.mk>

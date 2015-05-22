# $OpenBSD: Makefile,v 1.5 2015/05/22 04:23:29 stu Exp $

COMMENT =	Tcl Database Connectivity

V =		1.0.3
DISTNAME =	tdbc${V}
PKGNAME =	tdbc-${V}
SHARED_LIBS =	tdbc${V:S/.//g} 0.0
CATEGORIES =	databases
HOMEPAGE =	http://tdbc.tcl.tk/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tdbc \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--includedir=${PREFIX}/include/tdbc \
			SHLIB_VERSION=${LIBtdbc${V:S/.//g}_VERSION}

AUTOCONF_VERSION =	2.69
TEST_TARGET =		test

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 2013/02/07 07:15:03 ajacoutot Exp $

COMMENT =	Tcl Database Connectivity

DISTNAME =	tdbc1.0.0
PKGNAME =	tdbc-1.0.0
SHARED_LIBS =	tdbc100 0.0
CATEGORIES =	databases
HOMEPAGE =	http://tdbc.tcl.tk/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =		PKG_DIR=tdbc
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	autoconf no-autoheader

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--includedir=${PREFIX}/include/tdbc \
			--libdir=${MODTCL_TCLDIR} \
			SHLIB_VERSION=${LIBtdbc100_VERSION}

AUTOCONF_VERSION =	2.59
REGRESS_TARGET =	test

.include <bsd.port.mk>

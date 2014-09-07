# $OpenBSD: Makefile,v 1.3 2014/09/07 18:50:54 stu Exp $

COMMENT =	sqlite3 module for TDBC

DISTNAME =	tdbcsqlite3-1.0.1
PKGNAME =	tdbc-sqlite3-1.0.1
CATEGORIES =	databases
HOMEPAGE =	http://tdbc.tcl.tk/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			databases/tdbc \
			databases/sqlite3,-tcl

TEST_DEPENDS =		databases/sqlite3,-tcl
FAKE_FLAGS =		tmdir=${MODTCL_MODDIR}/${MODTCL_VERSION}
SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc

TEST_TARGET =		test
NO_BUILD =		Yes

.include <bsd.port.mk>

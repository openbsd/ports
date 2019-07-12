# $OpenBSD: Makefile,v 1.11 2019/07/12 20:44:02 sthen Exp $

COMMENT =		SQLite3 module for TDBC

V =			1.0.6

DISTNAME =		tdbcsqlite3-${V}
PKGNAME =		tdbc-sqlite3-${V}
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			databases/tdbc \
			databases/sqlite3-tcl

TEST_DEPENDS =		databases/sqlite3-tcl
FAKE_FLAGS =		tmdir=${MODTCL_MODDIR}/${MODTCL_VERSION:S/.//}

TEST_FLAGS =		SCRIPT='${WRKSRC}/tests/all.tcl ${TESTFLAGS} \
				-load "package ifneeded tdbc::sqlite3 ${V} \
				[list source ${WRKSRC}/library/tdbcsqlite3.tcl]"'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc

TEST_TARGET =		shell
NO_BUILD =		Yes

SUBST_VARS +=		V

.include <bsd.port.mk>

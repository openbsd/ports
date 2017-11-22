# $OpenBSD: Makefile,v 1.5 2017/11/22 20:54:18 stu Exp $

COMMENT =		Tcl bindings for SQLite3

V =			3.21.0
VER =			${V:S/.//g}

DISTNAME =		sqlite-autoconf-${VER}000
PKGNAME =		sqlite3-tcl-${V}
CATEGORIES =		databases
HOMEPAGE =		http://www.sqlite.org/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# PD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${HOMEPAGE}2017/

MODULES =		lang/tcl
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=sqlite3
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR}

NO_TEST =		Yes

# for mozilla
CFLAGS +=		-DSQLITE_ENABLE_UNLOCK_NOTIFY

WRKSRC =		${WRKDIST}/tea
SUBST_VARS =		VER

.include <bsd.port.mk>

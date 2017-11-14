# $OpenBSD: Makefile,v 1.4 2017/11/14 06:18:15 stu Exp $

COMMENT =		Tcl bindings for sqlite3 (embedded SQL implementation)

DISTNAME =		sqlite-autoconf-3200100
PKGNAME =		sqlite3-tcl-3.20.1
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

.include <bsd.port.mk>

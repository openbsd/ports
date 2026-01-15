COMMENT =		Tcl bindings for SQLite3

V =			3.51.2

DISTNAME =		sqlite${V}
PKGNAME =		sqlite3-tcl-${V}

CATEGORIES =		databases
HOMEPAGE =		https://cyqlite.sourceforge.io/cgi-bin/sqlite/home
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# PD
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

SITES =			${SITE_SOURCEFORGE:=tcl/}

DISTFILES =		tclsqlite{sqlite}${V}${EXTRACT_SUFX}

MODULES =		lang/tcl
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=sqlite3
SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--bindir=${PREFIX}/share/examples/sqlite3-tcl

CFLAGS +=		-DSQLITE_HAVE_ISNAN=1 \
			-DSQLITE_MAX_ALLOCATION_SIZE=0x00fffeff \
			-USQLITE_ENABLE_STAT4 \
			-USQLITE_USE_ALLOCA

TEST_TARGET =		test

SUBST_VARS =		VER

VER =			${V:S/.//g}

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/compat/sqlite3/spaceanal.tcl

.include <bsd.port.mk>

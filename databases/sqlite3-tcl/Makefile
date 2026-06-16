COMMENT =		Tcl bindings for SQLite3

REVISION =		0

V =			3.53.0

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
MODTCL_VERSION =	9

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			lang/tcl/8.6

FAKE_FLAGS =		PKG_DIR=sqlite3
TEST_FLAGS =		TCLSH_PROG=${MODTCL_BIN}

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--bindir=${PREFIX}/share/examples/sqlite3-tcl

CFLAGS +=		-DSQLITE_HAVE_ISNAN=1 \
			-DSQLITE_MAX_ALLOCATION_SIZE=0x00fffeff \
			-USQLITE_ENABLE_STAT4 \
			-USQLITE_USE_ALLOCA

ALL_TARGET =		binaries
TEST_TARGET =		test

SUBST_VARS =		VER

VER =			${V:S/.//g}

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/compat/sqlite3/spaceanal.tcl

post-install:
	cd ${WRKBUILD} && umask 022 && exec \
	env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
	    -f ${MAKE_FILE} clean ${ALL_TARGET} \
	    CPPFLAGS='-DTCL_MAJOR_VERSION=8' \
	    PKG_LIB_FILE=libsqlite${VER}.so
	${INSTALL_DATA} ${WRKBUILD}/libsqlite${VER}.so ${DESTDIR}${MODTCL_TCLDIR}/sqlite3/

.include <bsd.port.mk>

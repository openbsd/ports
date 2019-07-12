# $OpenBSD: Makefile,v 1.2 2019/07/12 20:44:02 sthen Exp $

COMMENT =		MariaDB module for TDBC

V =			1.0.6
N =			mysql

DISTNAME =		tdbc${N}${V}
PKGNAME =		tdbc-${N}-${V}
CATEGORIES =		databases
HOMEPAGE =		http://tdbc.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}

MODULES =		lang/tcl \
			databases/mariadb

# TDBC needs TclOO, which is in Tcl 8.6
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			databases/tdbc

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS} \
			${TEST_DEPENDS} \
			databases/tdbc

MAKE_ENV =		TDBCMYSQL_TEST_DB=${MODMARIADB_TEST_DBNAME}

FAKE_FLAGS =		PKG_DIR=tdbc${N} \
			PKG_HEADERS=''

TEST_FLAGS =		SCRIPT='${WRKSRC}/tests/all.tcl ${TESTFLAGS}' \
			TCLSH_ENV='TCLLIBPATH=${WRKBUILD}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--with-tdbc=${MODTCL_TCLDIR}/tdbc \
			--libdir=${MODTCL_TCLDIR}

TEST_TARGET =		shell
SUBST_VARS =		VER

VER =			${V:S/.//g}

MODMARIADB_TEST_DBNAME = tdbc_${N}_test

# Skip test requiring isolation levels not provided by MariaDB
TESTFLAGS =		-skip tdbc::mysql-19.11

pre-test:
	ln -sf ${WRKSRC}/library/tdbc${N}.tcl ${WRKBUILD}/

.include <bsd.port.mk>

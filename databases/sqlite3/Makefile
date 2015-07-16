# $OpenBSD: Makefile,v 1.75 2015/07/16 16:52:59 stu Exp $

COMMENT-main=	embedded SQL implementation
COMMENT-tcl=	TCL bindings for Sqlite3
COMMENT-lemon=	LEMON LALR(1) parser generator
V=		3.8.0.2
DISTNAME =	sqlite-src-3080002
EXTRACT_SUFX =	.zip
PKGNAME-main=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
PKGNAME-lemon=	lemon-${V}
CATEGORIES=	databases
IGNORE-main = "--${FULLPKGNAME-main} comes with OpenBSD as of release 5.2"
SUBPACKAGE ?= -lemon
REVISION-lemon=	0
REVISION-main=	0
REVISION-tcl=	1

MASTER_SITES =	${HOMEPAGE}2013/

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-main=	c ncurses pthread readline
WANTLIB-lemon=	c

CFLAGS+=	-DSQLITE_ENABLE_COLUMN_METADATA \
		-DSQLITE_HAVE_ISNAN \
		-DSQLITE_SOUNDEX \
		-DSQLITE_ENABLE_RTREE \
		-DSQLITE_ENABLE_UNLOCK_NOTIFY \
		-DSQLITE_ENABLE_FTS3
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

PSEUDO_FLAVORS=	no_tcl
NOT_FOR_ARCHS-tcl = ${NO_SHARED_ARCHS}
FLAVOR ?=

MULTI_PACKAGES=-main -lemon -tcl

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mno_shared}
CONFIGURE_ARGS +=	--enable-load-extension
.endif

.if ${BUILD_PACKAGES:M-tcl}
MODULES+=	lang/tcl

BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS-tcl=${MODTCL_RUN_DEPENDS}
WANTLIB-tcl =	sqlite3

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR}
CONFIGURE_ARGS+=TCLSH_CMD="${MODTCL_BIN}"
CONFIGURE_ENV += TCLLIBDIR=${MODTCL_TCLDIR}/sqlite3

TEST_TARGET=	test

.else
CONFIGURE_ARGS+=--disable-tcl
CONFIGURE_ARGS+=TCLSH_CMD=none
CONFIGURE_ENV += CFLAGS=-I"${WRKSRC}/ext/fts3"
NO_TEST=	Yes
.endif

# Don't include dependency on pthreads, weak pthread functions are
# used for non-threaded applications.
post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lemon
	${INSTALL_DATA} ${WRKBUILD}/lempar.c ${PREFIX}/share/lemon
	${INSTALL_PROGRAM} ${WRKBUILD}/lemon ${PREFIX}/bin

.include <bsd.port.mk>

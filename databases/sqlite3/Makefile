# $OpenBSD: Makefile,v 1.56 2011/01/10 08:11:56 landry Exp $

COMMENT-main=	embedded SQL implementation
COMMENT-tcl=	TCL bindings for Sqlite3
COMMENT-lemon=	LEMON LALR(1) parser generator
V=		3.7.4
DISTNAME=	sqlite-src-3070400
EXTRACT_SUFX =	.zip
PKGNAME-main=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
PKGNAME-lemon=	lemon-${V}
CATEGORIES=	databases
SHARED_LIBS +=	sqlite3              15.0      # .8.6

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=	c ncurses pthread readline
WANTLIB-lemon=	c

USE_LIBTOOL=	Yes
USE_GROFF =	Yes

CFLAGS+=	-DSQLITE_ENABLE_COLUMN_METADATA \
		-DSQLITE_HAVE_ISNAN \
		-DSQLITE_SOUNDEX \
		-DSQLITE_ENABLE_RTREE \
		-DSQLITE_ENABLE_FTS3
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

PSEUDO_FLAVORS=	no_tcl
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
FLAVOR?=
CONFIGURE_ARGS +=	--enable-load-extension	
.else
FLAVOR=	no_tcl
.endif

MULTI_PACKAGES=-main -lemon
.if !${FLAVOR:L:Mno_tcl}
MULTI_PACKAGES+=-tcl
MODULES+=	lang/tcl

BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
LIB_DEPENDS-tcl = ${BUILD_PKGPATH},-main>=${V}
WANTLIB-tcl =	sqlite3

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR}
CONFIGURE_ARGS+=TCLSH_CMD="${MODTCL_BIN}"
CONFIGURE_ENV += TCLLIBDIR=${MODTCL_TCLDIR}/sqlite3

REGRESS_TARGET=	test

.else
CONFIGURE_ARGS+=--disable-tcl
CONFIGURE_ARGS+=TCLSH_CMD=none
CONFIGURE_ENV += CFLAGS=-I"${WRKSRC}/ext/fts3"
NO_REGRESS=	Yes
.endif

# Don't include dependency on pthreads, weak pthread functions are
# used for non-threaded applications.
post-install:
	perl -pi -e s,'\-pthread','',g ${PREFIX}/lib/libsqlite3.la \
		${PREFIX}/lib/pkgconfig/sqlite3.pc
	${INSTALL_DATA_DIR} ${PREFIX}/share/lemon
	${INSTALL_DATA} ${WRKBUILD}/lempar.c ${PREFIX}/share/lemon
	${INSTALL_PROGRAM} ${WRKBUILD}/lemon ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/sqlite3.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.44 2009/04/16 20:09:58 martynas Exp $

COMMENT-main=	embedded SQL implementation
COMMENT-tcl=	TCL bindings for Sqlite3
COMMENT-lemon=	LEMON LALR(1) parser generator
V=		3.6.12
DISTNAME=	sqlite-${V}
PKGNAME-main=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
PKGNAME-lemon=	lemon-${V}
CATEGORIES=	databases
SHARED_LIBS +=	sqlite3              13.2      # .8.6
SHARED_LIBS +=	tclsqlite3           12.2      # .8.6

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

CFLAGS+=	-DSQLITE_ENABLE_COLUMN_METADATA
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-threads-override-locks

PSEUDO_FLAVORS=	no_tcl
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
FLAVOR?=
.else
FLAVOR=	no_tcl
.endif

MULTI_PACKAGES=-main -lemon
.if !${FLAVOR:L:Mno_tcl}
MULTI_PACKAGES+=-tcl
MODULES+=	lang/tcl
.endif

BUILD_DEPENDS=	${MODTCL_BUILD_DEPENDS}
LIB_DEPENDS-tcl = sqlite3::${BUILD_PKGPATH},-main

.if ${MULTI_PACKAGES:M-tcl}
CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR}

REGRESS_TARGET=	test

pre-configure:
	@perl -pi -e s,'tclsh',${MODTCL_BIN},g ${WRKSRC}/Makefile.in

.else
CONFIGURE_ARGS+=--disable-tcl
NO_REGRESS=	Yes
.endif

# Don't include dependency on pthreads, weak pthread functions are
# used for non-threaded applications.
post-install:
	perl -pi -e s,'\-pthread','',g ${PREFIX}/lib/libsqlite3.la \
		${PREFIX}/lib/pkgconfig/sqlite3.pc
	${INSTALL_DATA_DIR} ${PREFIX}/share/lemon
	${INSTALL_DATA} ${WRKBUILD}/tool/lempar.c ${PREFIX}/share/lemon
	${INSTALL_PROGRAM} ${WRKBUILD}/lemon ${PREFIX}/bin

.include <bsd.port.mk>

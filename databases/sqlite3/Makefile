# $OpenBSD: Makefile,v 1.38 2008/10/28 12:18:36 steven Exp $

COMMENT-main=	embedded SQL implementation
COMMENT-tcl=	TCL bindings for Sqlite3
V=		3.6.4
DISTNAME=	sqlite-${V}
PKGNAME-main=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}p0
CATEGORIES=	databases
SHARED_LIBS +=	sqlite3              12.0      # .8.6
SHARED_LIBS +=	tclsqlite3           11.0      # .8.6

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main=	c ncurses pthread readline

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-threads-override-locks

# XXX gcc bug? some regress tests crash w/-O2 but not -Os
.if ${MACHINE_ARCH} == "amd64"
CFLAGS+=-Os
.endif

PSEUDO_FLAVORS=	no_tcl
.if ${MACHINE_ARCH} != "m88k" && ${MACHINE_ARCH} != "vax"
FLAVOR?=
.else
FLAVOR=	no_tcl
.endif

MULTI_PACKAGES=-main
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
# XXX libtool issue
pre-install:
	@cp -p ${WRKSRC}/.libs/libtclsqlite3.so.$(LIBtclsqlite3_VERSION) ${WRKSRC}/.libs/libtclsqlite3.so

.else
CONFIGURE_ARGS+=--disable-tcl
NO_REGRESS=	Yes
.endif

# Don't include dependency on pthreads, weak pthread functions are
# used for non-threaded applications.
post-install:
	perl -pi -e s,'\-pthread','',g ${PREFIX}/lib/libsqlite3.la \
		${PREFIX}/lib/pkgconfig/sqlite3.pc

.include <bsd.port.mk>

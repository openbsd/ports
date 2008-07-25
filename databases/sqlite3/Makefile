# $OpenBSD: Makefile,v 1.35 2008/07/25 19:02:25 espie Exp $

COMMENT-main=	embedded SQL implementation
COMMENT-tcl=	TCL bindings for Sqlite3
V=		3.5.9
DISTNAME=	sqlite-${V}
PKGNAME-main=	sqlite3-${V}p0
PKGNAME-tcl=	sqlite3-tcl-${V}
CATEGORIES=	databases
SHARED_LIBS +=	sqlite3              11.0      # .8.6
SHARED_LIBS +=	tclsqlite3           10.0      # .8.6

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
.endif

BUILD_DEPENDS= :tcl-8.4.*:lang/tcl/8.4

.if ${MULTI_PACKAGES:M-tcl}
CONFIGURE_ARGS+=--with-tcl=${LOCALBASE}/lib/tcl8.4
# Can't pass all its regress tests, because tcl doesn't handle NaN
# (strtod doesn't work in an IEEE way)

REGRESS_TARGET=	test

pre-configure:
	@perl -pi -e s,'tclsh','tclsh8.4',g ${WRKSRC}/Makefile.in
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

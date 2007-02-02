# $OpenBSD: Makefile,v 1.26 2007/02/02 14:45:53 bernd Exp $

COMMENT-main=	"Embedded SQL implementation"
COMMENT-tcl=	"TCL bindings for Sqlite3"
V=		3.3.12
DISTNAME=	sqlite-${V}
PKGNAME-main=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
CATEGORIES=	databases
SHARED_LIBS +=	sqlite3              8.9      # .8.6
SHARED_LIBS +=	tclsqlite3           8.9      # .8.6

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c ncurses readline

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

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

LIB_DEPENDS-tcl=sqlite3.>=8.6::databases/sqlite3 \
		tcl84.>=1.0:tcl-8.4.*:lang/tcl/8.4

.if ${MULTI_PACKAGES:M-tcl}
CONFIGURE_ARGS+=--with-tcl=${LOCALBASE}/lib/tcl8.4
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

.include <bsd.port.mk>

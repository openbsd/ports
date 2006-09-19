# $OpenBSD: Makefile,v 1.21 2006/09/19 11:26:38 espie Exp $

COMMENT=	"Embedded SQL implementation"
COMMENT-tcl=	"TCL bindings for Sqlite3"
V=		3.3.7
DISTNAME=	sqlite-${V}
PKGNAME=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
CATEGORIES=	databases
SHARED_LIBS=	sqlite3	8.7 \
		tclsqlite3 8.7

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

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

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_tcl}
MULTI_PACKAGES+=-tcl
.endif

SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-tcl"
LIB_DEPENDS=	sqlite3.>=8.6::databases/sqlite3 \
		tcl84.>=1.0:tcl-8.4.*:lang/tcl/8.4
. endif
.else
. if ${MULTI_PACKAGES:M-tcl}
CONFIGURE_ARGS+=--with-tcl=${LOCALBASE}/lib/tcl8.4
LIB_DEPENDS=	tcl84.>=1.0:tcl-8.4.*:lang/tcl/8.4
REGRESS_TARGET=	test
. else
CONFIGURE_ARGS+=--disable-tcl
NO_REGRESS=	Yes
. endif
.endif

pre-configure:
.if ${MULTI_PACKAGES:M-tcl}
	@perl -pi -e s,'tclsh','tclsh8.4',g ${WRKSRC}/Makefile.in
.endif

# XXX libtool issue
pre-install:
.if ${MULTI_PACKAGES:M-tcl}
	@cp -p ${WRKSRC}/.libs/libtclsqlite3.so.$(LIBtclsqlite3_VERSION) ${WRKSRC}/.libs/libtclsqlite3.so
.endif

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 2005/09/17 22:05:39 jolan Exp $

COMMENT=	"Embedded SQL implementation"
COMMENT-tcl=	"TCL bindings for Sqlite3"
V=		3.2.6
PKGNAME=	sqlite3-${V}
PKGNAME-tcl=	sqlite3-tcl-${V}
DISTNAME=	sqlite-${V}
CATEGORIES=	databases
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.sqlite.org/

# PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig

WANTLIB=	c ncurses readline

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

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
LIB_DEPENDS=	sqlite3.8.6::databases/sqlite3 \
		tcl84.1.0::lang/tcl/8.4
. endif
.else
. if ${MULTI_PACKAGES:M-tcl}
CONFIGURE_ARGS+=--with-tcl=${LOCALBASE}/lib/tcl8.4
LIB_DEPENDS=	tcl84.1.0::lang/tcl/8.4
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
	@cp -p ${WRKSRC}/.libs/libtclsqlite3.so.8.6 ${WRKSRC}/.libs/libtclsqlite3.so
.endif

.include <bsd.port.mk>

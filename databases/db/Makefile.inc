# $OpenBSD: Makefile.inc,v 1.21 2006/11/25 22:54:27 steven Exp $

COMMENT-main=	"Berkeley DB package, revision ${REVISION}"
COMMENT-tcl=	"TCL bindings for Berkeley DB, revision ${REVISION}"

DISTNAME=	db-${VERSION}
PKGNAME-tcl=	db-tcl-${VERSION}p3
CATEGORIES=	databases
HOMEPAGE=	http://www.oracle.com/technology/products/berkeley-db/
MASTER_SITES=	http://download.oracle.com/berkeley-db/

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes

CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-compat185 \
			--enable-dump185 \
			--enable-cxx \
			--includedir=$$\{prefix}/include/db${DEST_SUBDIR} \
			--libdir=$$\{prefix}/lib/db${DEST_SUBDIR}

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC}/dist

MAKE_FLAGS+=	DBVERSION=${LIBdb_VERSION} \
		DBCXXVERSION=${LIBdb_cxx_VERSION} \
		DBTCLVERSION=${LIBdb_tcl_VERSION}
FAKE_FLAGS=	${MAKE_FLAGS} DESTDIR=${WRKINST}

WRKBUILD=	${WRKDIST}/build_unix

PSEUDO_FLAVORS+=	no_tcl
FLAVOR?=

MULTI_PACKAGES+=	-main

LIB_DEPENDS-main?=
RUN_DEPENDS-main?=
WANTLIB-tcl?=
RUN_DEPENDS-tcl=	:db-${REVISION}.*:databases/db/v${REVISION} \
			:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}

.if !${FLAVOR:L:Mno_tcl}
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

MULTI_PACKAGES+=-tcl

TCL_VERSION=	8.4
BUILD_DEPENDS+=	:tcl-${TCL_VERSION}.*:lang/tcl/${TCL_VERSION}
CFLAGS+=	-I${LOCALBASE}/include/tcl${TCL_VERSION}
CONFIGURE_ARGS+=--enable-tcl \
		--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION}

# this compiles slightly different code, some tests fail nevertheless
#CONFIGURE_ARGS+=--enable-test

do-regress:
	@cd ${WRKBUILD}; env PATH=${PORTPATH} tclsh${TCL_VERSION} ${FILESDIR}/regress.tcl

.else
CONFIGURE_ARGS+=--disable-tcl
# regression tests need tcl
NO_REGRESS=	Yes
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db${DEST_SUBDIR}


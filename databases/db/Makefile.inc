# $OpenBSD: Makefile.inc,v 1.24 2008/10/28 11:53:33 steven Exp $

COMMENT-main=	Berkeley DB package, revision ${REVISION}
COMMENT-tcl=	TCL bindings for Berkeley DB, revision ${REVISION}

DISTNAME=	db-${VERSION}
PKGNAME-tcl=	db-tcl-${VERSION}p4
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

WRKBUILD=	${WRKDIST}/build_unix

PSEUDO_FLAVORS+=	no_tcl
FLAVOR?=

MULTI_PACKAGES+=	-main

LIB_DEPENDS-main?=
RUN_DEPENDS-main?=

.if !${FLAVOR:L:Mno_tcl}
MULTI_PACKAGES+=-tcl
MODULES+=	lang/tcl
NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

WANTLIB-tcl?=
RUN_DEPENDS-tcl=	:db-${REVISION}.*:databases/db/v${REVISION} \
			${MODTCL_RUN_DEPENDS}

BUILD_DEPENDS+=	${MODTCL_BUILD_DEPENDS}
CFLAGS+=	-I${MODTCL_INCDIR}
CONFIGURE_ARGS+=--enable-tcl \
		--with-tcl=${MODTCL_LIBDIR}

# this compiles slightly different code, some tests fail nevertheless
#CONFIGURE_ARGS+=--enable-test

do-regress:
	@cd ${WRKBUILD}; env PATH=${PORTPATH} ${MODTCL_BIN} ${FILESDIR}/regress.tcl

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


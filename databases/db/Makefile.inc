# $OpenBSD: Makefile.inc,v 1.35 2014/05/08 20:23:19 sthen Exp $

COMMENT-main=	Berkeley DB package, revision ${REV}
COMMENT-tcl=	TCL bindings for Berkeley DB, revision ${REV}

DISTNAME=	db-${VERSION}
CATEGORIES=	databases
HOMEPAGE=	http://www.oracle.com/technology/products/berkeley-db/
MASTER_SITES=	http://download.oracle.com/berkeley-db/

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes


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

MULTI_PACKAGES += -main -tcl

LIB_DEPENDS-main?=
RUN_DEPENDS-main?=
NOT_FOR_ARCHS-tcl = ${NO_SHARED_ARCHS}
#ONLY_FOR_ARCHS = ${ALL_ARCHS}
ONLY_FOR_ARCHS-java = amd64 i386

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-tcl}
MODULES+=	lang/tcl

WANTLIB-tcl?=
RUN_DEPENDS-tcl+=	${MODTCL_RUN_DEPENDS}

BUILD_DEPENDS+=	${MODTCL_BUILD_DEPENDS}
CFLAGS+=	-I${MODTCL_INCDIR}
CONFIGURE_ARGS+=--enable-tcl \
		--with-tcl=${MODTCL_LIBDIR}

# this compiles slightly different code, some tests fail nevertheless
#CONFIGURE_ARGS+=--enable-test

do-test:
	@cd ${WRKBUILD}; env PATH=${PORTPATH} ${MODTCL_BIN} ${FILESDIR}/regress.tcl

.else
CONFIGURE_ARGS+=--disable-tcl
# regression tests need tcl
NO_TEST=	Yes
.endif

.if ${BUILD_PACKAGES:M-java}
CONFIGURE_ARGS+=--enable-java
MODULES+=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	Yes
CONFIGURE_ENV+=	JAVAC=${JAVA_HOME}/bin/javac \
		JAR=${JAVA_HOME}/bin/jar \
		JAVA=${JAVA_HOME}/bin/java
MAKE_FLAGS+=	DBJVERSION=${LIBdb_java_VERSION}
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db${DEST_SUBDIR}
	cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db${DEST_SUBDIR}


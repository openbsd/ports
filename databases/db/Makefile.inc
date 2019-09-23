# $OpenBSD: Makefile.inc,v 1.42 2019/09/23 16:55:57 kurt Exp $

COMMENT-main=	Berkeley DB package, revision ${REV}
COMMENT-tcl=	TCL bindings for Berkeley DB, revision ${REV}

DISTNAME=	db-${VERSION}
CATEGORIES=	databases
HOMEPAGE=	https://www.oracle.com/database/technologies/related/berkeleydb.html
MASTER_SITES=	https://download.oracle.com/berkeley-db/

# License: BSD + SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE=	Yes


CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	--enable-shared \
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
#ONLY_FOR_ARCHS = ${ALL_ARCHS}
ONLY_FOR_ARCHS-java = aarch64 amd64 i386

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
MODJAVA_VER=	1.8+
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


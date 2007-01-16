# $OpenBSD: Makefile,v 1.29 2007/01/16 02:48:02 kurt Exp $

COMMENT-java=	"Java bindings for Berkeley DB, revision ${REVISION}"

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p11
PKGNAME-main=	${DISTNAME}p11
PKGNAME-java=	db-java-${VERSION}p3
DBLIBDIR=	lib/db4
SHARED_LIBS +=	db                   4.2      # .0.0
SHARED_LIBS +=	db_cxx               5.0      # .0.0
SHARED_LIBS +=	db_java              4.2      # .0.0
SHARED_LIBS +=	db_tcl               4.2      # .0.0

MASTER_SITES0=	${HOMEPAGE}db/update/${VERSION}/
PATCHFILES=	patch.${VERSION}.1:0 \
		patch.${VERSION}.2:0

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}
WANTLIB=	c

PSEUDO_FLAVORS=	java
FLAVOR?=

RUN_DEPENDS-java=	:db-${REVISION}.*:databases/db/v${REVISION} \
			${MODJAVA_RUN_DEPENDS}
WANTLIB-java=

.if ${FLAVOR:L:Mjava}
MULTI_PACKAGES+=-java
CONFIGURE_ARGS+=--enable-java
MODULES+=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	Yes
CONFIGURE_ENV+=	JAVAC=${JAVA_HOME}/bin/javac \
		JAR=${JAVA_HOME}/bin/jar \
		JAVA=${JAVA_HOME}/bin/java
MAKE_FLAGS+=	DBJVERSION=${LIBdb_java_VERSION}
.endif

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.26 2006/11/04 12:27:19 kurt Exp $

COMMENT-java=	"Java bindings for Berkeley DB, revision ${REVISION}"

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p10
PKGNAME-java=	db-java-${VERSION}p1
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

.if ${FLAVOR:L:Mjava}
MULTI_PACKAGES+=-java
SUBPACKAGE?=
CONFIGURE_ARGS+=--enable-java

. if defined(PACKAGING)
.  if ${SUBPACKAGE} == "-java"
MODULES+=	java
MODJAVA_VER=	1.3+
MODJAVA_JRERUN=	Yes
RUN_DEPENDS+=	:db-${REVISION}.*:databases/db/v${REVISION}
WANTLIB=
.  endif
. else

MODULES+=	java
MODJAVA_VER=	1.3+
CONFIGURE_ENV+=	JAVAC=${JAVA_HOME}/bin/javac \
		JAR=${JAVA_HOME}/bin/jar \
		JAVA=${JAVA_HOME}/bin/java
. endif

MAKE_FLAGS+=	DBJVERSION=${LIBdb_java_VERSION}

.endif

.include <bsd.port.mk>

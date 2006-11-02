# $OpenBSD: Makefile,v 1.24 2006/11/02 15:04:39 kurt Exp $

COMMENT-java=	"Java bindings for Berkeley DB, revision ${REVISION}"

REVISION=	4
VERSION=	${REVISION}.2.52
PKGNAME=	${DISTNAME}p10
PKGNAME-java=	db-java-${VERSION}p0
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

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PSEUDO_FLAVORS=	no_java
FLAVOR?=

. if !${FLAVOR:L:Mno_java}
MULTI_PACKAGES+=-java
SUBPACKAGE?=
CONFIGURE_ARGS+=--enable-java

.  if defined(PACKAGING)
.   if ${SUBPACKAGE} == "-java"
MODULES+=	java
MODJAVA_VER=	1.4+
RUN_DEPENDS+=	:db-${REVISION}.*:databases/db/v${REVISION}
WANTLIB=
.   endif
.  else
MODULES+=	java
MODJAVA_VER=	1.4+
CONFIGURE_ENV+=	JAVAC=${JAVA_HOME}/bin/javac \
		JAR=${JAVA_HOME}/bin/jar \
		JAVA=${JAVA_HOME}/bin/java
.  endif

MAKE_FLAGS+=	DBJVERSION=${LIBdb_java_VERSION}

. endif
.endif

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.35 2009/03/11 21:28:45 bernd Exp $

COMMENT-java=	Java bindings for Berkeley DB, revision ${REVISION}

REVISION=	4
VERSION=	${REVISION}.6.21
PKGNAME-main=	${DISTNAME}
PKGNAME-java=	db-java-${VERSION}p2
PKGNAME-tcl=	db-tcl-${VERSION}p5
DBLIBDIR=	lib/db4
SHARED_LIBS +=	db                   5.0      # .0.0
SHARED_LIBS +=	db_cxx               6.0      # .0.0
SHARED_LIBS +=	db_java              5.0      # .0.0
SHARED_LIBS +=	db_tcl               6.0      # .0.0

MASTER_SITES0=	${HOMEPAGE}db/update/${VERSION}/

CONFIGURE_STYLE=gnu

DEST_SUBDIR=	${REVISION}
WANTLIB=	c

PSEUDO_FLAVORS=	java
FLAVOR?=

RUN_DEPENDS-java=	:db->=4,<5:databases/db/v${REVISION} \
			${MODJAVA_RUN_DEPENDS}
RUN_DEPENDS-tcl=	:db->=4,<5:databases/db/v${REVISION}
WANTLIB-java=

.if ${FLAVOR:L:Mjava}
MULTI_PACKAGES+=-java
CONFIGURE_ARGS+=--enable-java
MODULES+=	java
MODJAVA_VER=	1.4+
MODJAVA_JRERUN=	Yes
CONFIGURE_ENV+=	JAVAC=${JAVA_HOME}/bin/javac \
		JAR=${JAVA_HOME}/bin/jar \
		JAVA=${JAVA_HOME}/bin/java
MAKE_FLAGS+=	DBJVERSION=${LIBdb_java_VERSION}
.endif

SUBST_VARS=	LIBdb_tcl_VERSION

pre-configure:
	@perl -pi -e "s,db_(archive|checkpoint|deadlock|dump|hotbackup),db5_\0,g" ${WRKSRC}/test/*tcl
	@perl -pi -e "s,db_(load|printlog|recover|stat|upgrade|verify),db5_\0,g" ${WRKSRC}/test/*tcl
	@${SUBST_CMD} ${WRKSRC}/test/include.tcl

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.21 2000/12/28 17:14:10 matt Exp $

DISTNAME=	db-3.1.17
CATEGORIES=	databases
NEED_VERSION=	1.320
MASTER_SITES=	http://www.sleepycat.com/update/3.1.17/
HOMEPAGE=	http://www.sleepycat.com/

JDK_VERSION=	1.1.8

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

CONFIGURE_STYLE=	gnu dest
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--enable-compat185 --enable-dump185 --enable-cxx \
			${CONFIGURE_SHARED}

WRKBUILD=	${WRKDIST}/build_unix

FLAVORS=	java
FLAVOR?=

.if ${FLAVOR:L:Mjava}
ONLY_FOR_ARCHS=		i386
BUILD_DEPENDS=		${LOCALBASE}/jdk${JDK_VERSION}/bin/java::devel/jdk
CONFIGURE_ARGS+=	--enable-java
PORTPATH=		/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/jdk${JDK_VERSION}/bin
.endif

post-configure:
	@-ln -s ${LOCALBASE}/jdk${JDK_VERSION}/include/freebsd/jni_md.h \
		${WRKBUILD}/jni_md.h

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db3.h
.if exists(${PREFIX}/lib/libdb-3.1.a) && exists(${PREFIX}/lib/libdb_cxx-3.1.a)
	@mv ${PREFIX}/lib/libdb-3.1.a ${PREFIX}/lib/libdb3.a
	@mv ${PREFIX}/lib/libdb_cxx-3.1.a ${PREFIX}/lib/libdb3_cxx.a
.else
	@mv ${PREFIX}/lib/libdb.a ${PREFIX}/lib/libdb3.a
	@mv ${PREFIX}/lib/libdb_cxx.a ${PREFIX}/lib/libdb3_cxx.a
.endif	
	@echo "Installing samples: ${PREFIX}/share/examples/db ..."
	@cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db
	@cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db
.if ${FLAVOR:L:Mjava}
	@cd ${WRKSRC}/examples_java; ${INSTALL_DATA} *.java \
		${PREFIX}/share/examples/db
.endif

.include <bsd.port.mk>


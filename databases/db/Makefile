# $OpenBSD: Makefile,v 1.19 2000/09/04 17:17:45 matt Exp $

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

.if defined(FLAVOR) && ${FLAVOR:L:Mjava}
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
	@-mv ${PREFIX}/lib/libdb.a ${PREFIX}/lib/libdb3.a
	@echo "Installing samples: ${PREFIX}/share/examples/db ..."
	@cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db
	@cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db
.if defined(FLAVOR) && ${FLAVOR:L:Mjava}
	@cd ${WRKSRC}/examples_java; ${INSTALL_DATA} *.java \
		${PREFIX}/share/examples/db
.endif

.include <bsd.port.mk>


# $OpenBSD: Makefile,v 1.29 2002/06/03 15:18:01 todd Exp $

COMMENT=	"Berkeley DB package, revision 3"

VMM=		3.1
VERSION=	${VMM}.17
DISTNAME=	db-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.489
HOMEPAGE=	http://www.sleepycat.com/
MASTER_SITES=	${HOMEPAGE}/update/snapshot/

JDK_VERSION=	1.1.8
TCL_VERSION=	8.3

MAINTAINER=	Heikki Korpela <heko@openbsd.org>

# License: BSD+SleepyCat's additions.
# Must purchase license to redistribute if not distributing the source.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu dest
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS+=	--enable-compat185 
CONFIGURE_ARGS+=	--enable-dump185
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/dist

WRKBUILD=	${WRKDIST}/build_unix

FLAVORS=	java tcl c++
FLAVOR?=

.if ${FLAVOR:L:Mtcl}
# We can't use NO_SHARED_LIBS and IGNORE because IGNORE
# is only handled by bsd.port.mk and NO_SHARED_LIBS doesn't get
# defined until bsd.port.mk..
NOT_FOR_ARCHS=	hppa mvme88k vax
LIB_DEPENDS+=	tcl83.1.3::lang/tcl/${TCL_VERSION}
# Argh.
CFLAGS+=-I${LOCALBASE}/include/tcl${TCL_VERSION}
CONFIGURE_ARGS+=--enable-tcl 
CONFIGURE_ARGS+=--with-tcl=${LOCALBASE}/lib/tcl${TCL_VERSION}
.else
CONFIGURE_ARGS+=--disable-tcl
.endif

.if ${FLAVOR:L:Mc++}
CONFIGURE_ARGS+=--enable-cxx
.else
CONFIGURE_ARGS+=--disable-cxx
.endif

.if ${FLAVOR:L:Mjava}
BROKEN=			"requires native JDK"
ONLY_FOR_ARCHS=		i386
BUILD_DEPENDS=		::devel/jdk/1.1
CONFIGURE_ARGS+=	--enable-java
PORTPATH=		/usr/bin:/bin:/usr/sbin:/sbin:${LOCALBASE}/bin:${X11BASE}/bin:${LOCALBASE}/jdk${JDK_VERSION}/bin
.endif

.if ${FLAVOR:L:Mjava}
post-configure:
	@ln -sf ${LOCALBASE}/jdk${JDK_VERSION}/include/freebsd/jni_md.h \
		${WRKBUILD}/jni_md.h
.endif

post-install:
# Renaming db.h to db3.h (to avoid conflict with /usr/include/db.h)
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db3.h

# Installing examples for each language installed. (No examples for
# tcl available, only tests.)
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db
	cd ${WRKSRC}/examples_c; ${INSTALL_DATA} *.c \
		${PREFIX}/share/examples/db

.if ${FLAVOR:L:Mc++}
	cd ${WRKSRC}/examples_cxx; ${INSTALL_DATA} *.cpp \
		${PREFIX}/share/examples/db
.endif

.if ${FLAVOR:L:Mjava}
	cd ${WRKSRC}/examples_java; ${INSTALL_DATA} *.java \
		${PREFIX}/share/examples/db
.endif

.include <bsd.port.mk>

# From PostgreSQL port Makefile.
.if ${FLAVOR:L:Mc++} && !defined(NO_SHARED_LIBS)
SED_PLIST+=-e '/%%SHARED-c++%%/r${PKGDIR}/PFRAG.c++.shared' -e '//d'
.elif ${FLAVOR:L:Mc++} && defined(NO_SHARED_LIBS) && \
	${NO_SHARED_LIBS:L} == "yes"
SED_PLIST+=-e '/%%SHARED-c++%%/d'
.endif

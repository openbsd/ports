# $OpenBSD: Makefile,v 1.21 2008/12/22 13:22:12 kurt Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	Java2(TM) SE Dev Kit v${V} Early Access ${B}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${V} Early Access ${B}
V=		1.7.0.00
B=		b24
DISTFILES=	openjdk7-${B}.tar.bz2 \
		jdk-7-icedtea-plugs-1.6.tar.gz
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}${B}p4
PKGNAME-jre=	jre-${V}${B}p4

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	https://jdk7.dev.java.net/

MASTER_SITES=	http://www.intricatesoftware.com/distfiles/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=	:jdk-1.7.0.*:devel/jdk/1.7
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.7.0
.else
BUILD_DEPENDS+=	:jdk-1.6.0.*:devel/jdk/1.6
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.6.0
.endif

VMEM_WARNING=	Yes
BUILD_DEPENDS+=	::devel/apache-ant \
		::archivers/zip \
		::archivers/unzip \
		::print/cups
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst c freetype m ossaudio pthread stdc++

USE_GMAKE=	Yes

MAKE_ENV=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_BINARY_PLUGS_PATH=${WRKDIR}/jdk-7-icedtea-plugs \
		ANT_HOME=${LOCALBASE} \
		DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		NO_DOCS=true \
		CC="${CC}" \
		CXX="${CXX}" \
		USERNAME=${USER} \
		HOTSPOT_BUILD_JOBS=${HOTSPOT_BUILD_JOBS}

#ALL_TARGET=	debug_build

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=	DONT_ENABLE_IPV6="YES"
.endif

JDKHOME=	jdk-1.7.0
JREHOME=	jre-1.7.0

SUBST_VARS=	JDKHOME JREHOME

WRKDIST=	${WRKDIR}/openjdk7-${B}
JVMARCH=	${MACHINE_ARCH:S/i386/i586/}
BUILDDIR=	${WRKDIST}/build/bsd-${JVMARCH}
JDKIMAGEDIR=	${BUILDDIR}/j2sdk-image
JREIMAGEDIR=	${BUILDDIR}/j2re-image
 
.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Dclient_vm=1
.else
PKG_ARGS+=	-Dclient_vm=0
.endif

COPYDIRS=	hotspot/src/os/linux/launcher \
		hotspot/src/os/linux/vm \
		hotspot/src/os_cpu/linux_x86/vm \
		hotspot/build/linux \
		hotspot/build/linux/makefiles \
		jdk/src/linux/doc/man

COPYFILES=	corba/make/common/Defs-linux.gmk \
		corba/make/common/shared/Defs-linux.gmk \
		jdk/make/common/Defs-linux.gmk \
		jdk/make/common/shared/Defs-linux.gmk \
		jdk/make/java/nio/mapfile-linux \
		jdk/make/netbeans/common/architectures/name-Linux.properties \
		jdk/make/sun/awt/mapfile-vers-linux \
		jdk/make/tools/sharing/classlist.linux \
		jdk/src/solaris/classes/java/lang/UNIXProcess.java.linux \
		jdk/src/solaris/classes/sun/awt/fontconfigs/linux.fontconfig.properties \
		jdk/src/solaris/classes/sun/tools/attach/LinuxAttachProvider.java \
		jdk/src/solaris/hpi/include/largefile_linux.h

# create initial bsd src from linux src (except for threads_solaris.c)
pre-patch:
	@for d in ${COPYDIRS}; do \
		mkdir -p `echo ${WRKDIST}/$$d | sed 's/linux/bsd/g;'`; \
		cd ${WRKDIST}/$$d; \
		for f in *; do \
			if [ -f $$f ]; then \
				t=`echo ${WRKDIST}/$$d/$$f | sed 's/linux/bsd/g;'`; \
				sed 's/linux/bsd/g; s/Linux/Bsd/g' < $$f > $$t; \
			fi; \
		done; \
	done
	@for f in ${COPYFILES}; do \
		t=`echo $$f | sed 's/linux/bsd/g; s/Linux/Bsd/g'`; \
		sed 's/linux/bsd/g; s/Linux/Bsd/g' < ${WRKDIST}/$$f > ${WRKDIST}/$$t; \
	done
	@sed 's/solaris/bsd/g; s/Solaris/Bsd/g' \
		< ${WRKDIST}/jdk/src/solaris/hpi/native_threads/src/threads_solaris.c \
		> ${WRKDIST}/jdk/src/solaris/hpi/native_threads/src/threads_bsd.c

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja
	@rm -f ${BUILDDIR}/democlasses/demo/jvmti/hprof/src/hprof_md.c.orig \
		${BUILDDIR}/impsrc/com/sun/tools/javah/Util.java.orig \
		${BUILDDIR}/langtools/build/bootstrap/classes/com/sun/tools/javah/Util.java.orig \
		${BUILDDIR}/langtools/build/classes/com/sun/tools/javah/Util.java.orig \
		${BUILDDIR}/classes/com/sun/tools/javah/Util.java.orig

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

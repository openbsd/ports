# $OpenBSD: Makefile,v 1.32 2009/10/07 01:53:54 kurt Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	Java2(TM) SE Dev Kit v${V} Early Access ${B}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${V} Early Access ${B}
V=		1.7.0.00
B=		b72
DISTFILES=	openjdk-7-ea-src-${B}-17_sep_2009.zip \
		jibx_1_1_5.zip:0
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}${B}
PKGNAME-jre=	jre-${V}${B}

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.java.net/download/openjdk/jdk7/promoted/${B}/
MASTER_SITES0=	${MASTER_SITE_SOURCEFORGE:=jibx/}

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

.if ${FLAVOR:L:Mnative_bootstrap}
INSTALLED!= (pkg_info -e "jdk->=1.7,<1.8" -q && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.7 jdk package"
.endif
BUILD_DEPENDS+=	:jdk->=1.7,<1.8:devel/jdk/1.7
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.7.0
.else
BUILD_DEPENDS+=	:jdk->=1.6,<1.7:devel/jdk/1.6
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.6.0
.endif

VMEM_WARNING=	Yes
BUILD_DEPENDS+=	::devel/apache-ant \
		::archivers/zip \
		::archivers/unzip \
		::print/cups
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst c freetype m pthread stdc++ z

USE_GMAKE=	Yes

MAKE_ENV=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_JIBX_LIBS_PATH=${WRKDIR}/jibx/lib \
		ALT_PACKAGE_PATH=${LOCALBASE} \
		ALT_X11_PATH=${X11BASE} \
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

WRKDIST=	${WRKDIR}/openjdk
JVMARCH=	${MACHINE_ARCH:S/i386/i586/}
BUILDDIR=	${WRKDIST}/build/bsd-${JVMARCH}
JDKIMAGEDIR=	${BUILDDIR}/j2sdk-image
JREIMAGEDIR=	${BUILDDIR}/j2re-image
 
.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Dclient_vm=1
.else
PKG_ARGS+=	-Dclient_vm=0
.endif

COPYDIRS=	hotspot/agent/src/os/linux \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/debugger/linux \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/debugger/linux/amd64 \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/debugger/linux/x86 \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/runtime/linux \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/runtime/linux_amd64 \
		hotspot/agent/src/share/classes/sun/jvm/hotspot/runtime/linux_x86 \
		hotspot/src/os/linux/launcher \
		hotspot/src/os/linux/vm \
		hotspot/src/os_cpu/linux_x86/vm \
		hotspot/make/linux \
		hotspot/make/linux/makefiles \
		jdk/src/linux/doc/man \
		jdk/src/linux/doc/man/ja

COPYFILES=	hotspot/agent/src/share/classes/sun/jvm/hotspot/LinuxVtblAccess.java \
		corba/make/common/Defs-linux.gmk \
		corba/make/common/shared/Defs-linux.gmk \
		jdk/make/com/sun/tools/attach/mapfile-linux \
		jdk/make/common/Defs-linux.gmk \
		jdk/make/common/shared/Defs-linux.gmk \
		jdk/make/java/nio/mapfile-linux \
		jdk/make/netbeans/common/architectures/name-Linux.properties \
		jdk/make/sun/awt/mapfile-vers-linux \
		jdk/make/tools/sharing/classlist.linux \
		jdk/src/solaris/classes/java/lang/UNIXProcess.java.linux \
		jdk/src/solaris/classes/sun/awt/fontconfigs/linux.fontconfig.properties \
		jdk/src/solaris/classes/sun/nio/fs/LinuxFileSystemProvider.java \
		jdk/src/solaris/classes/sun/nio/fs/LinuxFileSystem.java \
		jdk/src/solaris/classes/sun/nio/fs/LinuxFileStore.java \
		jdk/src/solaris/classes/sun/nio/fs/LinuxNativeDispatcher.java \
		jdk/src/solaris/classes/sun/tools/attach/LinuxAttachProvider.java \
		jdk/src/solaris/classes/sun/tools/attach/LinuxVirtualMachine.java \
		jdk/src/solaris/hpi/include/largefile_linux.h \
		jdk/src/solaris/native/java/net/linux_close.c \
		jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c

# create initial bsd src from linux src (except for threads_solaris.c)
post-extract:
	@for d in ${COPYDIRS}; do \
		mkdir -p `echo ${WRKDIST}/$$d | sed 's/linux/bsd/g;'`; \
		cd ${WRKDIST}/$$d; \
		for f in *; do \
			if [ -f $$f ]; then \
				t=`echo ${WRKDIST}/$$d/$$f | sed 's/linux/bsd/g; s/Linux/Bsd/g'`; \
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
	@cp ${WRKDIST}/jdk/src/share/lib/security/java.security \
		${WRKDIST}/jdk/src/share/lib/security/java.security-openbsd
	@rm ${WRKDIST}/hotspot/agent/src/os/bsd/proc_service.h
	@cp -f ${FILESDIR}/cacerts ${WRKDIST}/jdk/src/share/lib/security

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

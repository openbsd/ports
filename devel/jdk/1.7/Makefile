# $OpenBSD: Makefile,v 1.43 2011/05/02 07:23:17 landry Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	Java2(TM) SE Dev Kit v${V} Early Access ${B}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${V} Early Access ${B}
V=		1.7.0.00
B=		b122
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}${B:S/b/beta/}
REVISION-main =	1
PKGNAME-jre=	jre-${V}${B:S/b/beta/}
REVISION-jre =	1
EPOCH=		0

# see openjdk/jaxp/jaxp.properties & openjdk/jaxws/jaxws.properties 
# in ${WRKDIR} for names and download locations of extra distfiles

JDK_SRC=	openjdk-7-ea-src-${B}-16_dec_2010.zip
JAXP_SRC=	jaxp-1_4_4.zip
JAXWS_SRC=	jdk7-jaxws2_2-2010_08_19.zip
JAF_SRC=	jdk7-jaf-2010_08_19.zip

DISTFILES=	${JDK_SRC} ${JAXP_SRC}:0 ${JAXWS_SRC}:1 ${JAF_SRC}:1
EXTRACT_ONLY=	${JDK_SRC}

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.java.net/download/openjdk/jdk7/promoted/${B}/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES0=  https://jaxp.dev.java.net/files/documents/913/152561/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES1=  http://java.net/downloads/jax-ws/JDK7/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GROFF =	Yes
NO_REGRESS=	Yes

.if ${FLAVOR:L:Mnative_bootstrap}
INSTALLED!= (pkg_info -qe "jdk->=1.7.0.00beta122v0,<1.8v0" && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.7.0.00beta122v0 jdk package or greater"
.endif
BUILD_DEPENDS+=	jdk->=1.7.0.00beta122v0,<1.8v0:devel/jdk/1.7
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.7.0
.else
BUILD_DEPENDS+=	jdk->=1.6,<1.7:devel/jdk/1.6
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.6.0
.endif

VMEM_WARNING=	Yes
BUILD_DEPENDS+=	devel/apache-ant->=1.8.2 \
		archivers/zip \
		archivers/unzip \
		print/cups
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst Xrender c freetype m pthread sndio stdc++ z

USE_GMAKE=	Yes

MAKE_ENV=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_DROPS_DIR=${DISTDIR} \
		ALT_PACKAGE_PATH=${LOCALBASE} \
		ALT_X11_PATH=${X11BASE} \
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
		hotspot/src/os_cpu/linux_zero/vm \
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
	@cp -f ${FILESDIR}/PLATFORM_API_BSDOS_PCM.c \
		${WRKDIST}/jdk/src/solaris/native/com/sun/media/sound

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

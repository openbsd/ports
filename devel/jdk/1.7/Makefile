# $OpenBSD: Makefile,v 1.49 2012/05/03 21:48:21 kurt Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	Java2(TM) SE Dev Kit v${V}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${V}
V=		1.7.0.03
B=		b13
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}
REVISION-main=	0
PKGNAME-jre=	jre-${V}
REVISION-jre=	0
EPOCH=		0

# see openjdk/jaxp/jaxp.properties & openjdk/jaxws/jaxws.properties 
# in ${WRKDIR} for names and download locations of extra distfiles

JDK_SRC=	openjdk-7u2-fcs-src-${B}-17_nov_2011.zip
JAXP_SRC=	jaxp145_01.zip
JAXWS_SRC=	jdk7-jaxws2_2_4-b04-2011_06_01.zip
JAF_SRC=	jdk7-jaf-2010_08_19.zip
PATCH_SET=	openjdk-7u2-patch-set-20120314.zip
PATCH_SET2=	openjdk-7u3-patch-set-20120417.zip

DISTFILES=	${JDK_SRC} ${JAXP_SRC}:0 ${JAXWS_SRC}:1 ${JAF_SRC}:2 ${PATCH_SET}:3 ${PATCH_SET2}:3
EXTRACT_ONLY=	${JDK_SRC} ${PATCH_SET} ${PATCH_SET2}
DIST_SUBDIR=	jdk

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.java.net/download/openjdk/jdk7u2/promoted/${B}/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES0=  http://download.java.net/jaxp/1.4.5/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES1=  http://download.java.net/glassfish/components/jax-ws/openjdk/jdk7/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES2=  http://java.net/downloads/jax-ws/JDK7/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES3=  http://www.intricatesoftware.com/distfiles/ \
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
INSTALLED!= (pkg_info -qe "jdk->=1.7.0.00v0,<1.8v0" && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.7.0.00v0 or greater jdk package"
.endif
BUILD_DEPENDS+=	jdk->=1.7.0.00v0,<1.8v0:devel/jdk/1.7
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.7.0
.else
BUILD_DEPENDS+=	jdk->=1.6,<1.7:devel/jdk/1.6
ALT_BOOTDIR=	${LOCALBASE}/jdk-1.6.0
.endif

VMEM_WARNING=	Yes
BUILD_DEPENDS+=	devel/apache-ant>=1.8.2 \
		archivers/zip \
		archivers/unzip \
		print/cups
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst Xrender c freetype m pthread sndio stdc++ z

USE_GMAKE=	Yes

MAKE_ENV=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_DROPS_DIR=${DISTDIR}/${DIST_SUBDIR} \
		ALT_PACKAGE_PATH=${LOCALBASE} \
		ALT_X11_PATH=${X11BASE} \
		DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		NO_DOCS=true \
		CC="${CC}" \
		CXX="${CXX}" \
		USERNAME=${USER} \
		MILESTONE=fcs \
		BUILD_NUMBER=b04 \
		JDK_UPDATE_VERSION=03 \
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
		jdk/src/solaris/native/java/net/linux_close.c \
		jdk/src/solaris/native/sun/nio/fs/LinuxNativeDispatcher.c

# create initial bsd src from linux src
post-extract:
	@for d in ${COPYDIRS}; do \
		mkdir -p `echo ${WRKDIST}/$$d | sed 's/linux/bsd/g;'`; \
		cd ${WRKDIST}/$$d; \
		for f in *; do \
			if [ -f $$f ]; then \
				t=`echo ${WRKDIST}/$$d/$$f | sed 's/linux/bsd/g; s/Linux/Bsd/g; s/LINUX/BSD/g'`; \
				sed 's/linux/bsd/g; s/Linux/Bsd/g; s/LINUX/BSD/g' < $$f > $$t; \
			fi; \
		done; \
	done
	@for f in ${COPYFILES}; do \
		t=`echo $$f | sed 's/linux/bsd/g; s/Linux/Bsd/g; s/LINUX/BSD/g'`; \
		sed 's/linux/bsd/g; s/Linux/Bsd/g; s/LINUX/BSD/g' < ${WRKDIST}/$$f > ${WRKDIST}/$$t; \
	done
	@rm ${WRKDIST}/hotspot/agent/src/os/bsd/proc_service.h
	@cp -f ${FILESDIR}/cacerts ${WRKDIST}/jdk/src/share/lib/security
	@cp -f ${FILESDIR}/PLATFORM_API_BSDOS_PCM.c \
		${WRKDIST}/jdk/src/solaris/native/com/sun/media/sound
	@cd ${WRKDIST} && \
		${PATCH} -p0 -z .orig.linux --quiet < ${WRKDIR}/${PATCH_SET:R}
	@cd ${WRKDIST} && \
		${PATCH} -p0 -z .orig.u2 --quiet < ${WRKDIR}/${PATCH_SET2:R}
	@perl -pi -e 's|build-policy install-limited|build-policy install-unlimited|' \
		${WRKDIST}/jdk/make/javax/crypto/Makefile


post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JDKIMAGEDIR}/man/ja_JP.UTF-8 \
		${JREIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja_JP.UTF-8

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

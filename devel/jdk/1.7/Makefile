# $OpenBSD: Makefile,v 1.3 2007/07/13 22:52:35 kurt Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS= 	i386 amd64

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
V=			1.7.0
B=			b15
D=			05_jul_2007
DISTFILES=		jdk-7-ea-src-${B}-jrl-${D}.jar \
			jdk-7-ea-bin-${B}-jrl-${D}.jar \
			jdk-7-ea-mozilla_headers-${B}-unix-${D}.jar
PKGNAME=		jdk-${V}.${B}

CATEGORIES=		devel/jdk java

HOMEPAGE=		https://jdk7.dev.java.net/
MASTER_SITES=		http://www.java.net/download/jdk7/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Java Research License
# http://www.java.net/jrl.csp
PERMIT_PACKAGE_CDROM=	"JRL"
PERMIT_PACKAGE_FTP=	"JRL"
PERMIT_DISTFILES_CDROM= "JRL"
PERMIT_DISTFILES_FTP=	"JRL"

NO_REGRESS=		Yes

BUILD_DEPENDS=		:jdk->=1.5.0.11:devel/jdk/1.5 \
			::archivers/zip \
			::archivers/unzip
USE_MOTIF=		openmotif
MODULES=		converters/libiconv
WANTLIB=		X11 Xext Xi Xp Xt Xtst c m ossaudio pthread \
			stdc++ z

USE_GMAKE=		Yes

ALT_BOOTDIR=		${LOCALBASE}/jdk-1.5.0

MAKE_ENV=		ALT_BOOTDIR=${ALT_BOOTDIR} \
			ALT_JDK_IMPORT_PATH=${ALT_BOOTDIR} \
			DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
			USERNAME=${USER} \
			HOTSPOT_BUILD_JOBS=`sysctl -n hw.ncpu`

JDKHOME=		jdk-${V}

SUBST_VARS=		JDKHOME

WRKDIST=		${WRKDIR}
WRKBUILD=		${WRKDIST}/hotspot/make
JVMARCH=		${MACHINE_ARCH:S/i386/i486/}
OUTPUTDIR1=		${WRKDIST}/hotspot/build/bsd/bsd_${JVMARCH}_compiler1
OUTPUTDIR2=		${WRKDIST}/hotspot/build/bsd/bsd_${JVMARCH}_compiler2
JNIMDH=			${WRKDIST}/hotspot/src/cpu/${JVMARCH}/vm/jni_${JVMARCH}.h
 
ALL_TARGET=		product
.if ${MACHINE_ARCH} == "i386"
ALL_TARGET+=		product1
PKG_ARGS+=		-Dclient_vm=1
.else
PKG_ARGS+=		-Dclient_vm=0
.endif

COPYDIRS=	hotspot/src/os/linux/launcher \
		hotspot/src/os/linux/vm \
		hotspot/src/os_cpu/linux_amd64/vm \
		hotspot/src/os_cpu/linux_i486/vm \
		hotspot/build/linux \
		hotspot/build/linux/makefiles \
		install/make/installer/binaries/linux \
		j2se/src/linux

COPYFILES=	control/make/common/Defs-linux.gmk \
		deploy/make/common/Defs-linux.gmk \
		deploy/make/common/Rules-linux.gmk \
		deploy/make/plugin/common/Defs-linux.gmk \
		install/make/common/Defs-linux.gmk \
		j2se/make/com/sun/tools/attach/mapfile-linux \
		j2se/make/common/Defs-linux.gmk \
		j2se/make/common/shared/Defs-linux.gmk \
		j2se/make/java/nio/mapfile-linux \
		j2se/make/netbeans/common/architectures/name-Linux.properties \
		j2se/make/sun/awt/mapfile-vers-linux \
		j2se/make/tools/sharing/classlist.linux \
		j2se/src/closed/solaris/classes/sun/awt/fontconfigs/linux.fontconfig.properties \
		j2se/src/closed/solaris/native/com/sun/media/sound/engine/HAE_API_LinuxOS.c \
		j2se/src/closed/solaris/native/com/sun/media/sound/engine/HAE_API_LinuxOS_Capture.c \
		j2se/src/solaris/classes/java/lang/UNIXProcess.java.linux \
		j2se/src/solaris/classes/sun/awt/fontconfigs/linux.fontconfig.properties \
		j2se/src/solaris/classes/sun/tools/attach/LinuxAttachProvider.java \
		j2se/src/solaris/hpi/include/largefile_linux.h \
		j2se/src/solaris/native/sun/tools/attach/LinuxVirtualMachine.c

do-extract:
	@mkdir ${WRKDIR}/tmp && \
		${CC} ${CFLAGS} -o ${WRKDIR}/tmp/x_x2zip ${FILESDIR}/x_x2zip.c
.for jar in ${DISTFILES}
	@cd ${WRKDIR}/tmp && \
		unzip -qo ${FULLDISTDIR}/${jar} X_X && \
		./x_x2zip "YES I ACCEPT THE CLICK THROUGH LICENSE.  " X_X && \
		cd ${WRKDIR} && \
		unzip -q ${WRKDIR}/tmp/X_X.zip -x */lib*.so
.endfor
	@rm -rf ${WRKDIR}/tmp

# create initial bsd src from linux src (except for threads_solaris.c)
pre-patch:
	@chmod -R +w ${WRKDIST}/hotspot
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
		< ${WRKDIST}/j2se/src/solaris/hpi/native_threads/src/threads_solaris.c \
		> ${WRKDIST}/j2se/src/solaris/hpi/native_threads/src/threads_bsd.c

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${ALT_BOOTDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf -
	@find ${PREFIX}/${JDKHOME} -name \*_g -or -name \*_g.so -or -name \*_g.jar | \
		xargs rm
	${INSTALL_DATA} ${WRKDIST}/hotspot/src/share/vm/services/jmm.h \
		${PREFIX}/${JDKHOME}/include
	${INSTALL_DATA} ${OUTPUTDIR2}/generated/jvmtifiles/jvmti.h \
		${PREFIX}/${JDKHOME}/include
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}/include/bsd
	${INSTALL_DATA} ${JNIMDH} ${PREFIX}/${JDKHOME}/include/bsd/jni_md.h
	${INSTALL_DATA} ${OUTPUTDIR2}/product/lib{jvm,jsig}.so \
		${PREFIX}/${JDKHOME}/jre/lib/${MACHINE_ARCH}/server
.if ${MACHINE_ARCH} == "i386"
	${INSTALL_DATA} ${OUTPUTDIR1}/product/lib{jvm,jsig}.so \
		${PREFIX}/${JDKHOME}/jre/lib/${MACHINE_ARCH}/client
.endif

.include <bsd.port.mk>

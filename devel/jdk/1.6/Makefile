# $OpenBSD: Makefile,v 1.52 2014/01/09 09:59:55 sthen Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	amd64 i386

BROKEN-i386=	guarantee(get_thread() == thread) failed: must be the same thread, quickly
# XXX if fixed, re-add i386 to ONLY_FOR_ARCHS-java in databases/db/Makefile.inc

COMMENT-main=	Java2(TM) SE Dev Kit v${VERSION}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${VERSION}
VERSION=	1.6.0.${UPDATE}
UPDATE=		32
BUILD=		b27
PKGNAME=	jdk-${VERSION}
PKGNAME-main=	jdk-${VERSION}
REVISION-main=	6
PKGNAME-jre=	jre-${VERSION}
REVISION-jre=	6

# see jaxp/jaxp.properties & jaxws/jaxws.properties 
# in ${WRKDIR} for names and download locations of extra distfiles

JDK_SRC=	openjdk-6-src-${BUILD}-26_oct_2012.tar.gz
PATCH_SET=	openjdk-6u${UPDATE}-patch-set-20130113.zip
PAXP_SRC=	jaxp144_04.zip
JAXWS_SRC=	jdk6-jaxws2_1_6-2011_06_13.zip
JAF_SRC=	jdk6-jaf-b20.zip

DISTFILES=	${JDK_SRC} ${PATCH_SET}:1 ${PAXP_SRC}:2 ${JAXWS_SRC}:3 ${JAF_SRC}:4
EXTRACT_ONLY=	${JDK_SRC} ${PATCH_SET}
DIST_SUBDIR=	jdk

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://download.java.net/openjdk/jdk6/promoted/${BUILD}/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES1=	http://www.intricatesoftware.com/distfiles/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES2=  http://download.java.net/jaxp/openjdk/jdk6/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES3=  http://download.java.net/glassfish/components/jax-ws/openjdk/jdk6/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES4=  https://java.net/downloads/jax-ws/OpenJDK6/ \
		http://icedtea.classpath.org/download/drops/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES5=	${MASTER_SITE_APACHE:=ant/binaries/} \
		http://archive.apache.org/dist/ant/binaries/
MASTER_SITES6=	http://spacehopper.org/mirrors/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF=	Yes
NO_TEST=	Yes

BUILD_DEPENDS=	archivers/zip \
		archivers/unzip \
		print/cups,-libs \
		x11/openmotif
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst c freetype m pthread sndio stdc++ z

APACHE_ANT=	apache-ant-1.8.4-bin.tar.gz
SUPDISTFILES+=	openjdk6-bootjdk-amd64-20130822.tar.gz:6 \
		openjdk6-bootjdk-i386-20130822.tar.gz:6 \
		${APACHE_ANT}:5

.if ${FLAVOR:Mnative_bootstrap}
INSTALLED!= (pkg_info -e "jdk->=1.6,<1.7" -q && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.6 jdk package"
.endif
BUILD_DEPENDS+=	jdk->=1.6,<1.7:devel/jdk/1.6 \
		devel/apache-ant>=1.8.2
ALT_BOOTDIR=	${LOCALBASE}/${JDKHOME}
.else
BOOT_JDK=	openjdk6-bootjdk-${ARCH}-20130822.tar.gz
.include <bsd.port.arch.mk>
.if (${ARCH}==amd64) || (${ARCH}==i386)
DISTFILES+=	${BOOT_JDK}:6
.endif
DISTFILES+=	${APACHE_ANT}:5
EXTRACT_ONLY+=	${BOOT_JDK} ${APACHE_ANT}
MAKE_ENV+=	ANT_HOME=${WRKDIST}/apache-ant-1.8.4 \
		LD_LIBRARY_PATH=${WRKDIST}/bootjdk-libs
ALT_BOOTDIR=	${WRKDIST}/bootjdk
.endif

USE_GMAKE=	Yes

DPB_PROPERTIES=	parallel

# Don't call make -jN, instead pass MAKE_JOBS to HOTSPOT_BUILD_JOBS
PARALLEL_BUILD=	No

# Allow HOTSPOT_BUILD_JOBS to be overridden
HOTSPOT_BUILD_JOBS?= ${MAKE_JOBS}

MAKE_ENV+=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_MOTIF_DIR="${LOCALBASE}" \
		ALT_DROPS_DIR=${FULLDISTDIR} \
		ALT_PACKAGE_PATH=${LOCALBASE} \
		ALT_X11_PATH=${X11BASE} \
		ALT_CACERTS_FILE=${FILESDIR}/cacerts \
		SKIP_FASTDEBUG_BUILD=true \
		NO_DOCS=true \
		MILESTONE=fcs \
		BUILD_NUMBER=${BUILD} \
		JDK_UPDATE_VERSION=${UPDATE} \
		CC="${CC}" \
		CXX="${CXX}" \
		DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		USER="${USER}" \
		WARNINGS_ARE_ERRORS="" \
		HOTSPOT_BUILD_JOBS=${HOTSPOT_BUILD_JOBS}

.if !${FLAVOR:Mwith_ipv6}
MAKE_ENV+=	DONT_ENABLE_IPV6=YES
.endif

JDKHOME=	jdk-1.6.0
JREHOME=	jre-1.6.0

SUBST_VARS=	JDKHOME JREHOME

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Dclient_vm=1
.else
PKG_ARGS+=	-Dclient_vm=0
.endif

# Deal with Sun's internal build structure
WRKDIST=	${WRKDIR}
OUTPUTDIR=	${WRKDIR}/build/bsd-${MACHINE_ARCH:S/i386/i586/}
JDKIMAGEDIR=	${OUTPUTDIR}/j2sdk-image
JREIMAGEDIR=	${OUTPUTDIR}/j2re-image

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
		jdk/src/solaris/classes/sun/tools/attach/LinuxAttachProvider.java \
		jdk/src/solaris/classes/sun/tools/attach/LinuxVirtualMachine.java \
		jdk/src/solaris/hpi/include/largefile_linux.h \
		jdk/src/solaris/native/java/net/linux_close.c \
		jdk/src/solaris/native/sun/tools/attach/LinuxVirtualMachine.c

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
	@cp ${FILESDIR}/PLATFORM_API_BSDOS_PCM.c \
		${WRKDIR}/jdk/src/solaris/native/com/sun/media/sound
	@perl -pi -e 's|build-policy install-limited|build-policy install-unlimited|' \
		${WRKDIST}/jdk/make/javax/crypto/Makefile

pre-patch:
	@cd ${WRKDIR} &&  \
		${PATCH} -p0 -z .orig.u${UPDATE} --quiet < ${WRKDIR}/${PATCH_SET:R}

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

# The bootjdk is the jdk image with some parts deleted
# and a copy of the system shared libs needed to run it.
# The parts deleted are not needed for bootstrap and would
# require more system shared libs to be saved.
build-bootjdk: ${_BUILD_COOKIE}
	@rm -rf ${WRKDIR}/tmp
	@mkdir -p ${WRKDIR}/tmp/bootjdk
	@mkdir -p ${WRKDIR}/tmp/bootjdk-libs
	@cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${WRKDIR}/tmp/bootjdk -xf - 
	@cd ${WRKDIR}/tmp/bootjdk/bin && rm appletviewer policytool
	@cd ${WRKDIR}/tmp/bootjdk/jre/lib/${ARCH} && rm libnpt.so libinstrument.so libsplashscreen.so xawt/libmawt.so
	@ldd ${WRKDIR}/tmp/bootjdk/bin/unpack200 | \
		grep rlib | cut -d"/" -f 2-20 | \
		xargs -I % cp /% ${WRKDIR}/tmp/bootjdk-libs
	@objdump -p ${WRKDIR}/tmp/bootjdk/jre/lib/${ARCH}/libfontmanager.so | \
		grep NEEDED | grep libfreetype | sed  -e 's/[[:blank:]]*NEEDED[[:blank:]]*//' | \
		xargs -I % cp ${X11BASE}/lib/% ${WRKDIR}/tmp/bootjdk-libs
	@cd ${WRKDIR}/tmp && tar czf openjdk6-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz bootjdk*
	@echo "New bootjdk is located at ${WRKDIR}/tmp/openjdk6-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz"

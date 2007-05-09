# $OpenBSD: Makefile,v 1.2 2007/05/09 15:48:31 kurt Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS= 	i386 amd64

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
V=			1.7.0
B=			b12
DISTNAME=		openjdk-7-ea-src-${B}-06_may_2007
PKGNAME=		jdk-${V}p0

CATEGORIES=		devel/jdk java

HOMEPAGE=		http://openjdk.java.net/
MASTER_SITES=		http://www.java.net/download/openjdk/40ec4ed263a6dfce13b8cf18fa046058/jdk7/promoted/${B}/
EXTRACT_SUFX=		.zip

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# GPL2
# since this currently copies the SCSL binaries into the package
# we can't set them all to yes. when the full jdk is released
# we can.
PERMIT_PACKAGE_CDROM=	"SCSL"
PERMIT_PACKAGE_FTP=	"SCSL"
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=		Yes

BUILD_DEPENDS=		:jdk->=1.5.0p30:devel/jdk/1.5
USE_MOTIF=		openmotif
MODULES=		converters/libiconv
WANTLIB=		X11 Xext Xi Xmu Xp Xt Xtst c m ossaudio pthread \
			stdc++ z

USE_ZIP=		Yes
USE_GMAKE=		Yes

ALT_BOOTDIR=		${LOCALBASE}/jdk-1.5.0

MAKE_ENV=		ALT_BOOTDIR=${ALT_BOOTDIR} \
			ALT_JDK_IMPORT_PATH=${ALT_BOOTDIR} \
			DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
			USERNAME=${USER} \
			HOTSPOT_BUILD_JOBS=`sysctl -n hw.ncpu`

JDKHOME=		jdk-${V}

SUBST_VARS=		JDKHOME

WRKDIST=		${WRKDIR}/openjdk
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

COPYDIRS=		hotspot/src/os/linux/launcher \
			hotspot/src/os/linux/vm \
			hotspot/src/os_cpu/linux_amd64/vm \
			hotspot/src/os_cpu/linux_i486/vm \
			hotspot/build/linux \
			hotspot/build/linux/makefiles

# create initial bsd dirs from linux dirs
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
	@chmod -R +w ${WRKDIST}/hotspot

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

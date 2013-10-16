# $OpenBSD: Makefile,v 1.65 2013/10/16 14:12:21 bluhm Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	Java2(TM) SE Dev Kit v${V}
COMMENT-jre=	Java2(TM) SE Runtime Environment v${V}
U=		21
V=		1.7.0.${U}
B=		b11
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}
PKGNAME-jre=	jre-${V}
REVISION=	1
EPOCH=		0

JDK_SRC=	openjdk-7u6-fcs-src-b24-28_aug_2012.zip
PATCH_SET=	openjdk-7u${U}-patch-set-20130506.zip

DISTFILES=	${JDK_SRC} ${PATCH_SET}:1
EXTRACT_ONLY=	${JDK_SRC} ${PATCH_SET}
DIST_SUBDIR=	jdk

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.java.net/download/openjdk/jdk7u6/promoted/${B}/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/
MASTER_SITES1=  http://www.intricatesoftware.com/distfiles/ \
		http://openbsd.dead-parrot.de/distfiles/ \
		http://distfiles.nl/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_TEST=	Yes

.if ${FLAVOR:Mnative_bootstrap}
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
		print/cups,-libs
MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xtst Xrender c freetype m pthread sndio stdc++ z

USE_GMAKE=	Yes

# Don't call make -jN, instead pass MAKE_JOBS to HOTSPOT_BUILD_JOBS
PARALLEL_BUILD=         No

# Allow HOTSPOT_BUILD_JOBS to be overridden
HOTSPOT_BUILD_JOBS?= ${MAKE_JOBS}

MAKE_ENV=	ALT_BOOTDIR=${ALT_BOOTDIR} \
		ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
		ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
		ALT_PACKAGE_PATH=${LOCALBASE} \
		ALT_X11_PATH=${X11BASE} \
		DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		NO_DOCS=true \
		CC="${CC}" \
		CXX="${CXX}" \
		COMPILER_WARNINGS_FATAL=false \
		USERNAME=${USER} \
		MILESTONE=fcs \
		BUILD_NUMBER=${B} \
		JDK_UPDATE_VERSION=${U} \
		HOTSPOT_BUILD_JOBS=${HOTSPOT_BUILD_JOBS}

#ALL_TARGET=	debug_build

.if !${FLAVOR:Mwith_ipv6}
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

COPYFILES=	hotspot/src/os/linux/vm/decoder_linux.cpp \
		jdk/make/common/Defs-linux.gmk \
		jdk/make/common/shared/Defs-linux.gmk \
		jdk/make/tools/sharing/classlist.linux

# create initial bsd src from linux src
post-extract:
	@for f in ${COPYFILES}; do \
		t=`echo $$f | sed 's/linux/bsd/g'`; \
		sed 's/linux/bsd/g; s/Linux/Bsd/g' < ${WRKDIST}/$$f > ${WRKDIST}/$$t; \
	done
	@cp -f ${FILESDIR}/cacerts ${WRKDIST}/jdk/src/share/lib/security
	@cp -f ${FILESDIR}/PLATFORM_API_BSDOS_PCM.c \
		${WRKDIST}/jdk/src/solaris/native/com/sun/media/sound
	@cd ${WRKDIST} && \
		${PATCH} -p0 -z .orig.u${U} --quiet < ${WRKDIR}/${PATCH_SET:R}
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

# $OpenBSD: Makefile,v 1.47 2019/10/26 17:03:11 kurt Exp $

ONLY_FOR_ARCHS=	i386 amd64
USE_WXNEEDED=	Yes
DPB_PROPERTIES=	parallel

COMMENT=	OpenJDK Software Development Kit v${V}
BASE_VER=	1.8.0
UPDATE_VER=	232
BUILD_VER=	b09
BSD_PORT_REL=	1
V=		${BASE_VER}.${UPDATE_VER}.${BUILD_VER}.${BSD_PORT_REL}
PKGNAME=	jdk-${V}
PKGSTEM=	jdk-${BASE_VER}
EPOCH=		0

DIST_SUBDIR=	jdk
DISTNAME=	jdk8u${UPDATE_VER}-${BUILD_VER}.${BSD_PORT_REL}
BOOTJDK_DATE=	20190111
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
WRKDIST=	${WRKDIR}/openjdk-jdk8u-jdk8u${UPDATE_VER}-${BUILD_VER}.${BSD_PORT_REL}

CATEGORIES=	devel/jdk java

PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	https://github.com/battleblow/openjdk-jdk8u/archive/
MASTER_SITES1=	https://spacehopper.org/mirrors/ \
		http://www.intricatesoftware.com/distfiles/
MASTER_SITES2=	${MASTER_SITE_APACHE:=ant/binaries/} \
		http://archive.apache.org/dist/ant/binaries/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE=	Yes

NO_TEST=	Yes

APACHE_ANT=	apache-ant-1.9.7-bin.tar.gz
SUPDISTFILES+=	openjdk8-bootjdk-i386-${BOOTJDK_DATE}.tar.gz:1  \
		openjdk8-bootjdk-amd64-${BOOTJDK_DATE}.tar.gz:1 \
		${APACHE_ANT}:2

COMPILER=	base-clang ports-gcc base-gcc

.include <bsd.port.arch.mk>

.if ${FLAVOR:Mnative_bootstrap}
INSTALLED!= (pkg_info -qe "jdk->=1.8.0.00v0,<1.9v0" && echo yes) || echo no
.  if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.8.0.00v0 or greater jdk package"
.  endif
BUILD_DEPENDS+=	jdk->=1.8.0.00v0,<1.9v0:devel/jdk/1.8 \
		devel/apache-ant>=1.8.2
BOOT_JDK=	${LOCALBASE}/jdk-1.8.0
.else
BOOT_JDK_DIST=	openjdk8-bootjdk-${ARCH}-${BOOTJDK_DATE}.tar.gz
.  if (${ARCH}==amd64) || (${ARCH}==i386)
DISTFILES+=	${BOOT_JDK_DIST}:1
.  endif
DISTFILES+=	${APACHE_ANT}:2
MAKE_ENV+=	ANT_HOME=${WRKDIR}/apache-ant-1.9.3 \
		LD_LIBRARY_PATH=${WRKDIR}/bootjdk-libs
CONFIGURE_ENV+=	LD_LIBRARY_PATH=${WRKDIR}/bootjdk-libs
BOOT_JDK=	${WRKDIR}/bootjdk
.endif

BUILD_DEPENDS+=	archivers/zip \
		archivers/unzip \
		print/cups,-libs \
		shells/bash

LIB_DEPENDS=	converters/libiconv \
		graphics/giflib

WANTLIB=	X11 Xext Xi Xrender Xtst c freetype gif iconv m pthread ${COMPILER_LIBCXX} z

USE_GMAKE=	Yes
GMAKE=		${LOCALBASE}/bin/gmake

# Don't call make -jN, instead pass MAKE_JOBS to --with-jobs
PARALLEL_BUILD=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-option-checking \
		--with-boot-jdk=${BOOT_JDK} \
		--with-package-path=${LOCALBASE} \
		--with-fontconfig=${X11BASE} \
		--with-jobs=${MAKE_JOBS} \
		--with-cacerts-file=${FILESDIR}/cacerts \
		--with-debug-level=release \
		--disable-ccache \
		--disable-freetype-bundling \
		--disable-zip-debug-info \
		--disable-debug-symbols \
		--enable-static-libjli \
		--with-zlib=system \
		--with-giflib=system \
		--with-milestone=fcs \
		--with-update-version=${UPDATE_VER} \
		--with-build-number=${BUILD_VER}
CONFIGURE_ENV+=	ac_cv_path_NAWK=awk
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/common/autoconf/build-aux

# MAKE_FLAGS=	LOG=debug
MAKE_ENV+=	DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		COMPILER_WARNINGS_FATAL=false

.if ${PROPERTIES:Mclang}
MAKE_ENV+=	USE_CLANG=true
.endif

JDKHOME=	jdk-1.8.0

SUBST_VARS=	JDKHOME

JVMARCH=	${MACHINE_ARCH:S/i386/x86/:S/amd64/x86_64/}
BUILDDIR=	${WRKDIST}/build/bsd-${JVMARCH}-normal-server-release/images
JDKIMAGEDIR=	${BUILDDIR}/j2sdk-image
WRKTMP=		${WRKDIR}/tmp
 
post-extract:
	chmod +x ${WRKDIST}/configure

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JDKIMAGEDIR}/man/ja_JP.UTF-8

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 

# The bootjdk is the jdk image with some parts deleted
# and a copy of the system shared libs needed to run it.
# The parts deleted are not needed for bootstrap and would
# require more system shared libs to be saved.
build-bootjdk: build
	@rm -rf ${WRKTMP}
	@mkdir -p ${WRKTMP}/bootjdk
	@mkdir -p ${WRKTMP}/bootjdk-libs
	@cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${WRKTMP}/bootjdk -xf - 
	@cd ${WRKTMP}/bootjdk && rm -rf demo sample
	@cd ${WRKTMP}/bootjdk && rm bin/appletviewer bin/policytool jre/bin/policytool
	@cd ${WRKTMP}/bootjdk/jre/lib/${ARCH} && rm libnpt.so libinstrument.so libsplashscreen.so libjsound.so libawt_xawt.so
	@LD_LIBRARY_PATH="${WRKTMP}/bootjdk/jre/lib/${ARCH}:${WRKTMP}/bootjdk/jre/lib/${ARCH}/server" \
		find ${WRKTMP}/bootjdk -type f -perm -500 -exec ldd {} \; 2>/dev/null | \
		grep rlib | cut -d"/" -f 2-20 | sort -u | grep -v "\.so$$" | \
		xargs -I % cp /% ${WRKTMP}/bootjdk-libs
	@cd ${WRKTMP} && tar czf openjdk8-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz bootjdk*
	@echo "New bootjdk is located at ${WRKTMP}/openjdk8-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz"

.include <bsd.port.mk>

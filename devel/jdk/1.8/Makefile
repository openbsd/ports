# $OpenBSD: Makefile,v 1.17 2017/04/10 11:45:26 sthen Exp $

ONLY_FOR_ARCHS=	i386 amd64
USE_WXNEEDED=	Yes

COMMENT-main=	OpenJDK Software Development Kit v${V}
COMMENT-jre=	OpenJDK Runtime Environment v${V}
U=		121
V=		1.8.0.${U}
B=		b13
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}
PKGNAME-jre=	jre-${V}
EPOCH=		0
REVISION=	1

DIST_SUBDIR=	jdk
DISTNAME=	openjdk-8u121b13-bsd-port-20170201
EXTRACT_SUFX=	.tar.xz
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.intricatesoftware.com/distfiles/
MASTER_SITES1=	https://spacehopper.org/mirrors/ \
		http://www.intricatesoftware.com/distfiles/
MASTER_SITES2=	${MASTER_SITE_APACHE:=ant/binaries/} \
		http://archive.apache.org/dist/ant/binaries/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_TEST=	Yes

APACHE_ANT=	apache-ant-1.9.7-bin.tar.gz
SUPDISTFILES+=	openjdk8-bootjdk-i386-20161216.tar.gz:1  \
		openjdk8-bootjdk-amd64-20161216.tar.gz:1 \
		${APACHE_ANT}:2

.if ${FLAVOR:Mnative_bootstrap}
INSTALLED!= (pkg_info -qe "jdk->=1.8.0.00v0,<1.9v0" && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.8.0.00v0 or greater jdk package"
.endif
BUILD_DEPENDS+=	jdk->=1.8.0.00v0,<1.9v0:devel/jdk/1.8 \
		devel/apache-ant>=1.8.2
BOOT_JDK=	${LOCALBASE}/jdk-1.8.0
.else
BOOT_JDK_DIST=	openjdk8-bootjdk-${ARCH}-20161216.tar.gz
.include <bsd.port.arch.mk>
.if (${ARCH}==amd64) || (${ARCH}==i386)
DISTFILES+=	${BOOT_JDK_DIST}:1
.endif
DISTFILES+=	${APACHE_ANT}:2
MAKE_ENV+=	ANT_HOME=${WRKDIR}/apache-ant-1.9.3 \
		LD_LIBRARY_PATH=${WRKDIR}/bootjdk-libs
BOOT_JDK=	${WRKDIR}/bootjdk
.endif

BUILD_DEPENDS+=	archivers/zip \
		archivers/unzip \
		print/cups,-libs \
		shells/bash

LIB_DEPENDS=	converters/libiconv \
		graphics/giflib

WANTLIB=	X11 Xext Xi Xrender Xtst c freetype gif iconv m pthread ${LIBCXX} z

USE_GMAKE=	Yes
GMAKE=		${LOCALBASE}/bin/gmake

# Don't call make -jN, instead pass MAKE_JOBS to --with-jobs
PARALLEL_BUILD=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-option-checking \
		--with-boot-jdk=${BOOT_JDK} \
		--with-package-path=${LOCALBASE} \
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
		--with-update-version=${U} \
		--with-build-number=${B}
CONFIGURE_ENV=	ac_cv_path_NAWK=awk
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/common/autoconf/build-aux

# MAKE_FLAGS=	LOG=debug
MAKE_ENV=	DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
		COMPILER_WARNINGS_FATAL=false

JDKHOME=	jdk-1.8.0
JREHOME=	jre-1.8.0

SUBST_VARS=	JDKHOME JREHOME

JVMARCH=	${MACHINE_ARCH:S/i386/x86/:S/amd64/x86_64/}
BUILDDIR=	${WRKDIST}/build/bsd-${JVMARCH}-normal-server-release/images
JDKIMAGEDIR=	${BUILDDIR}/j2sdk-image
JREIMAGEDIR=	${BUILDDIR}/j2re-image
 
post-extract:
	chmod +x ${WRKDIST}/configure

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja ${JDKIMAGEDIR}/man/ja_JP.UTF-8 \
		${JREIMAGEDIR}/man/ja ${JREIMAGEDIR}/man/ja_JP.UTF-8

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
	@cd ${WRKDIR}/tmp/bootjdk && rm -rf demo sample
	@cd ${WRKDIR}/tmp/bootjdk && rm bin/appletviewer bin/policytool jre/bin/policytool
	@cd ${WRKDIR}/tmp/bootjdk/jre/lib/${ARCH} && rm libnpt.so libinstrument.so libsplashscreen.so libjsound.so libawt_xawt.so
	@LD_LIBRARY_PATH="${WRKDIR}/tmp/bootjdk/jre/lib/${ARCH}:${WRKDIR}/tmp/bootjdk/jre/lib/${ARCH}/server" \
		find ${WRKDIR}/tmp/bootjdk -type f -perm -500 -exec ldd {} \; 2>/dev/null | \
		grep rlib | cut -d"/" -f 2-20 | sort -u | grep -v "\.so$$" | \
		xargs -I % cp /% ${WRKDIR}/tmp/bootjdk-libs
	@cd ${WRKDIR}/tmp && tar czf openjdk8-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz bootjdk*
	@echo "New bootjdk is located at ${WRKDIR}/tmp/openjdk8-bootjdk-${ARCH}-$$(date +%Y%m%d).tar.gz"

# $OpenBSD: Makefile,v 1.4 2015/06/29 10:46:28 naddy Exp $

SHARED_ONLY=	Yes
ONLY_FOR_ARCHS=	i386 amd64

COMMENT-main=	OpenJDK Software Development Kit v${V}
COMMENT-jre=	OpenJDK Runtime Environment v${V}
U=		45
V=		1.8.0.${U}
B=		b14
PKGNAME=	jdk-${V}
PKGNAME-main=	jdk-${V}
PKGNAME-jre=	jre-${V}
EPOCH=		0
REVISION=	0

DIST_SUBDIR=	jdk
DISTNAME=	openjdk-8u45b14-bsd-port-20150618
EXTRACT_SUFX=	.tar.xz

CATEGORIES=	devel/jdk java

MULTI_PACKAGES=	-main -jre

FLAVORS=	with_ipv6
PSEUDO_FLAVORS=	native_bootstrap
FLAVOR?=

HOMEPAGE=	http://openjdk.java.net/

MASTER_SITES=	http://www.intricatesoftware.com/distfiles/

MAINTAINER=	Kurt Miller <kurt@openbsd.org>

# GPLv2 w/CLASSPATH exception
PERMIT_PACKAGE_CDROM=	Yes

USE_GROFF =	Yes
NO_TEST=	Yes

.if ${FLAVOR:Mnative_bootstrap}
INSTALLED!= (pkg_info -qe "jdk->=1.8.0.00v0,<1.9v0" && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.8.0.00v0 or greater jdk package"
.endif
BUILD_DEPENDS+=	jdk->=1.8.0.00v0,<1.9v0:devel/jdk/1.8
BOOT_JDK=	${LOCALBASE}/jdk-1.8.0
.else
BUILD_DEPENDS+=	jdk->=1.7.0.00v0,<1.8v0:devel/jdk/1.7
BOOT_JDK=	${LOCALBASE}/jdk-1.7.0
.endif

BUILD_DEPENDS+=	devel/apache-ant>=1.8.2 \
		archivers/zip \
		archivers/unzip \
		print/cups,-libs \
		shells/bash

LIB_DEPENDS=	graphics/giflib

MODULES=	converters/libiconv
WANTLIB=	X11 Xext Xi Xrender Xtst c freetype gif m pthread stdc++ z

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

.if !${FLAVOR:Mwith_ipv6}
MAKE_ENV+=	DONT_ENABLE_IPV6=yes
.endif

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

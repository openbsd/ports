# $OpenBSD: Makefile,v 1.5 2007/09/06 15:46:18 kurt Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS= 	i386 amd64

COMMENT-main=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.7.0
B=			b19
D=			30_aug_2007
DISTFILES=		jdk-7-ea-src-${B}-jrl-${D}.jar \
			jdk-7-ea-bin-${B}-jrl-${D}.jar
PKGNAME=		jdk-${V}.${B}
PKGNAME-main=		jdk-${V}.${B}
PKGNAME-jre=		jre-${V}.${B}

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-main -jre

FLAVORS=		with_ipv6
FLAVOR?=

HOMEPAGE=		https://jdk7.dev.java.net/
MASTER_SITES=		http://www.java.net/download/jdk7/ \
			http://www.intricatesoftware.com/distfiles/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

# Java Research License
# http://www.java.net/jrl.csp
PERMIT_PACKAGE_CDROM=	"JRL"
PERMIT_PACKAGE_FTP=	"JRL"
PERMIT_DISTFILES_CDROM= "JRL"
PERMIT_DISTFILES_FTP=	"JRL"

NO_REGRESS=		Yes

BUILD_DEPENDS=		:jdk-1.5.0*:devel/jdk/1.5 \
			::archivers/zip \
			::archivers/unzip \
			::print/cups
USE_MOTIF=		openmotif
MODULES=		converters/libiconv
WANTLIB=		X11 Xext Xi Xp Xt Xtst c freetype m ossaudio \
			pthread stdc++

USE_GMAKE=		Yes

ALT_BOOTDIR=		${LOCALBASE}/jdk-1.5.0

MAKE_ENV=		ALT_BOOTDIR=${ALT_BOOTDIR} \
			ALT_MOTIF_DIR=${LOCALBASE} \
			ALT_FREETYPE_HEADERS_PATH=${X11BASE}/include \
			ALT_FREETYPE_LIB_PATH=${X11BASE}/lib \
			SKIP_COMPARE_IMAGES=true \
			BUILD_INSTALL=false \
			NO_DOCS=true \
			CC="${CC}" \
			CXX="${CXX}" \
			DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
			USERNAME=${USER} \
			HOTSPOT_BUILD_JOBS=`sysctl -n hw.ncpu` \
			SKIP_FASTDEBUG_BUILD=true \
			BUILD_DEPLOY=false \
			USE_FREETYPE=true

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=		DONT_ENABLE_IPV6="YES"
.endif

JDKHOME=		jdk-1.7.0
JREHOME=		jre-1.7.0

SUBST_VARS=		JDKHOME JREHOME

WRKDIST=		${WRKDIR}
WRKBUILD=		${WRKDIST}/control/make
JVMARCH=		${MACHINE_ARCH:S/i386/i586/}
JDKIMAGEDIR=		${WRKDIST}/control/build/bsd-${JVMARCH}/j2sdk-image
JREIMAGEDIR=		${WRKDIST}/control/build/bsd-${JVMARCH}/j2re-image
 
.if ${MACHINE_ARCH} == "i386"
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
		j2se/src/linux/doc/man

COPYFILES=	control/make/common/Defs-linux.gmk \
		install/make/common/Defs-linux.gmk \
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
		j2se/src/solaris/hpi/include/largefile_linux.h

.include <bsd.own.mk>

ACCEPT_JRL_LICENSE ?= No

.if ${ACCEPT_JRL_LICENSE:L} != "yes"
IS_INTERACTIVE=	Yes
pre-extract:
	@${SH} ${FILESDIR}/license.sh
	@echo continuing....
.endif

do-extract:
	@rm -rf ${WRKDIR}/tmp && mkdir ${WRKDIR}/tmp && \
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

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja \
		${JDKIMAGEDIR}/man/ja_JP.eucJP \
		${JREIMAGEDIR}/man/ja \
		${JREIMAGEDIR}/man/ja_JP.eucJP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -


.include <bsd.port.mk>

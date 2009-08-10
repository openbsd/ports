# $OpenBSD: Makefile,v 1.59 2009/08/10 06:31:07 kili Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS= 	amd64 i386

COMMENT-main=		Java2(TM) Standard Edition Dev Kit v${V}
COMMENT-jre=		Java2(TM) Standard Edition Runtime Environment v${V}
V=			1.5.0.16
PKGNAME=		jdk-${V}
PKGNAME-main=		jdk-${V}p1
PKGNAME-jre=		jre-${V}p1

CATEGORIES=		devel devel/jdk java

MULTI_PACKAGES= 	-main -jre

HOMEPAGE=		https://tiger.dev.java.net/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

JRLSRC=			jdk-1_5_0_16-fcs-src-b02-jrl-28_may_2008.jar
JRLBIN=			jdk-1_5_0_16-fcs-bin-b02-jrl-28_may_2008.jar
PATCHSET=		bsd-jdk15-patches-9.tar.bz2

DISTFILES=		${JRLSRC} \
			${JRLBIN} \
			${PATCHSET}

MASTER_SITES=		http://www.java.net/download/tiger/tiger_u16/

# Java Research License
# http://www.java.net/jrl.csp
PERMIT_PACKAGE_CDROM=	JRL
PERMIT_PACKAGE_FTP=	JRL
PERMIT_DISTFILES_CDROM= JRL
PERMIT_DISTFILES_FTP=	JRL

NO_REGRESS=		Yes

VMEM_WARNING=		Yes
BUILD_DEPENDS=		::archivers/gtar \
			::archivers/zip \
			::archivers/unzip \
			::archivers/bzip2
USE_MOTIF=		openmotif
MODULES=		converters/libiconv
WANTLIB=		X11 Xext Xi Xp Xt Xtst c m ossaudio pthread \
			pthread-stubs xcb stdc++ z

WANTLIB-main=		${WANTLIB} Xmu

USE_X11=		Yes
USE_GMAKE=		Yes

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			LOCALDIR="${LOCALBASE}" \
			X11DIR="${X11BASE}" \
			SKIP_COMPARE_IMAGES="YES" \
			DONT_BUILD_DOCS="YES" \
			DONT_BUILD_INSTALL="YES" \
			LANG="C" \
			CC="${CC}" \
			CXX="${CXX}" \
			DEFAULT_LD_LIBRARY_PATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
			USER="${USER}" \
			HOTSPOT_BUILD_JOBS=${HOTSPOT_BUILD_JOBS}

# Error message for distfile.
FETCH_MANUALLY=		"You must manually fetch the distribution files, place"
FETCH_MANUALLY+=	"them in ${FULLDISTDIR} and then run make again."
FETCH_MANUALLY+=	"Get the 'Update 16 Source under the JRL license' file:"
FETCH_MANUALLY+=	"    ${JRLSRC} and"
FETCH_MANUALLY+=	"    the 'Source Binaries needed for Source Build' file:"
FETCH_MANUALLY+=	"    ${JRLBIN}"
FETCH_MANUALLY+=	"from http://download.java.net/tiger/tiger_u16/"
FETCH_MANUALLY+=	"Get the BSD patchset file:"
FETCH_MANUALLY+=	"   ${PATCHSET}"
FETCH_MANUALLY+=	"from http://www.eyesbeyond.com/freebsddom/java/jdk15.html"

FLAVORS=		no_web with_ipv6
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=		DONT_ENABLE_IPV6="YES"
.endif

# handle jar files in post-extract
EXTRACT_CASES+=		*.jar) true ;;

.if ${FLAVOR:L:Mnative_bootstrap}
INSTALLED!= (pkg_info -e "jdk->=1.5.0,<1.6" -q && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.5 jdk package"
.endif
BUILD_DEPENDS+=		:jdk->=1.5.0,<1.6:devel/jdk/1.5
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
DISTFILES+=		jdk-1_5_0_16-solaris-i586.tar.Z \
			xalan-j_2_7_0-bin.tar.gz
FETCH_MANUALLY+=	"Get 'JDK 5.0 Update 16' for 'Solaris x86 packages' file:"
FETCH_MANUALLY+=	"    jdk-1_5_0_16-solaris-i586.tar.Z"
FETCH_MANUALLY+=	"from http://java.sun.com/javase/downloads/index_jdk5.jsp or"
FETCH_MANUALLY+=	"http://java.sun.com/products/archive/j2se/5.0_16/index.html"
FETCH_MANUALLY+=	"Get the Apache Xalan Java file:"
FETCH_MANUALLY+=	"    xalan-j_2_7_0-bin.tar.gz"
FETCH_MANUALLY+=	"from http://archive.apache.org/dist/xml/xalan-j/"
BUILD_DEPENDS+=		:kaffe->=1.1.7p1:lang/kaffe \
			::lang/jikes
ALT_BOOTDIR2=		${LOCALBASE}/kaffe
MAKE_ENV+=		ALT_BOOTDIR=${WRKDIST} \
			ALT_BOOTDIR2=${LOCALBASE}/kaffe \
			ALT_BOOTSTRAP=yes \
			ABS_OUTPUTDIR=${OUTPUTDIR}
RT_JAR=			SUNWj5rt/reloc/jdk/instances/jdk1.5.0/jre/lib/rt.jar
TOOLS_JAR=		SUNWj5dev/reloc/jdk/instances/jdk1.5.0/lib/tools.jar
EXTRACT_CASES+=		*.Z) \
			tar xzf ${FULLDISTDIR}/$$archive ${RT_JAR} ${TOOLS_JAR} ;;
.endif

.if !${FLAVOR:L:Mno_web}
BUILD_DEPENDS+=		::devel/nspr
.else
MESSAGE=		${PKGDIR}/MESSAGE-no_web
MAKE_ENV+=		DONT_BUILD_DEPLOY="YES"
.endif

JDKHOME=		jdk-1.5.0
JREHOME=		jre-1.5.0

SUBST_VARS=		JDKHOME JREHOME

.if ${MACHINE_ARCH} == "i386"
PKG_ARGS+=              -Dclient_vm=1
.else
PKG_ARGS+=              -Dclient_vm=0
.endif

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/control/make
OUTPUTDIR=		${WRKDIR}/control/build/bsd-${MACHINE_ARCH:S/i386/i586/}
JDKIMAGEDIR=		${OUTPUTDIR}/j2sdk-image
JDKIMAGEDIR_G=		${OUTPUTDIR}/j2sdk-debug-image
JREIMAGEDIR=		${OUTPUTDIR}/j2re-image

.include <bsd.own.mk>

ACCEPT_JRL_LICENSE ?= No

.if ${ACCEPT_JRL_LICENSE:L} != "yes"
BROKEN += \n
BROKEN += You must read and accept Sun's JRL license located\n
BROKEN += at ${FILESDIR}/JavaResearchLicense.txt\n
BROKEN += To indicate your acceptance of the JRL add ACCEPT_JRL_LICENSE=Yes\n
BROKEN += to /etc/mk.conf and restart the build
.endif

post-extract:
	@rm -rf ${WRKDIR}/tmp
	@mkdir ${WRKDIR}/tmp && \
		${CC} ${CFLAGS} -o ${WRKDIR}/tmp/x_x2zip ${FILESDIR}/x_x2zip.c
.for jar in ${JRLSRC} ${JRLBIN}
	@cd ${WRKDIR}/tmp && \
		unzip -qo ${FULLDISTDIR}/${jar} X_X && \
		./x_x2zip "YES I ACCEPT THE CLICK THROUGH LICENSE.  " X_X && \
		cd ${WRKDIR} && \
		unzip -q ${WRKDIR}/tmp/X_X.zip -x */lib*.so
.endfor
	@rm -rf ${WRKDIR}/tmp
.if !${FLAVOR:L:Mnative_bootstrap}
	@mkdir -p ${OUTPUTDIR}/classes
	@cd ${OUTPUTDIR}/classes && \
		unzip -q ${WRKDIR}/${RT_JAR} -x META-INF* && \
		unzip -qn ${WRKDIR}/${TOOLS_JAR} -x META-INF*
	@rm -rf ${WRKDIR}/SUNWj5*
.endif

pre-patch:
	@cp -f ${FILESDIR}/cacerts ${WRKDIR}/j2se/src/share/lib/security
	@cd ${WRKDIR} &&  \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk15.patches

.if !${FLAVOR:L:Mnative_bootstrap}
post-patch:
	@cd ${WRKDIR}/bin && \
		${CHMOD} +x bootscript
.for prog in java javac javah jar
	@cd ${WRKDIR}/bin && \
		ln -s bootscript ${prog}
.endfor
.endif

post-build:
	@rm -rf ${JDKIMAGEDIR}/man/ja \
		${JDKIMAGEDIR}/man/ja_JP.eucJP \
		${JREIMAGEDIR}/man/ja \
		${JREIMAGEDIR}/man/ja_JP.eucJP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -
	cd ${WRKDIR} && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JDKHOME}/LICENSE && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JDKHOME}/jre/LICENSE && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JREHOME}/LICENSE

.include <bsd.port.mk>

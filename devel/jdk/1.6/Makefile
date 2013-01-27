# $OpenBSD: Makefile,v 1.37 2013/01/27 20:10:10 kurt Exp $

SHARED_ONLY=		Yes
ONLY_FOR_ARCHS= 	amd64 i386

COMMENT-main=		Java2(TM) Standard Edition Dev Kit v${V}
COMMENT-jre=		Java2(TM) Standard Edition Runtime Environment v${V}
V=			1.6.0.03
PKGNAME=		jdk-${V}
PKGNAME-main=		jdk-${V}
REVISION-main =		19
PKGNAME-jre=		jre-${V}
REVISION-jre =		19

CATEGORIES=		devel/jdk java
DPB_PROPERTIES=		parallel

MULTI_PACKAGES= 	-main -jre

HOMEPAGE=		https://jdk6.dev.java.net/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

JRLSRC=			jdk-6u3-fcs-src-b05-jrl-24_sep_2007.jar
JRLBIN=			jdk-6u3-fcs-bin-b05-jrl-24_sep_2007.jar
JRLMOZ=			jdk-6u3-fcs-mozilla_headers-b05-unix-24_sep_2007.jar
PATCHSET=		bsd-jdk16-patches-4.tar.bz2

DISTFILES=		${JRLSRC} \
			${JRLBIN} \
			${JRLMOZ} \
			${PATCHSET}
DIST_SUBDIR=		jdk

MASTER_SITES=		http://download.java.net/jdk6/6u3/promoted/b05/

# Java Research License
# http://www.java.net/jrl.csp
PERMIT_PACKAGE_CDROM=	JRL
PERMIT_PACKAGE_FTP=	JRL
PERMIT_DISTFILES_CDROM= JRL
PERMIT_DISTFILES_FTP=	JRL

NO_REGRESS=		Yes

VMEM_WARNING=		Yes
BUILD_DEPENDS=		archivers/gtar \
			archivers/zip \
			archivers/unzip \
			archivers/bzip2 \
			print/cups,-libs \
			x11/openmotif
MODULES=		converters/libiconv gcc4
MODGCC4_VERSION=	4.6
MODGCC4_ARCHS=		*
MODGCC4_LANGS=		java
WANTLIB=		X11 Xext Xi Xtst c m ossaudio pthread \
			sndio stdc++ z

USE_GMAKE=		Yes
USE_GROFF =		Yes

# Don't call make -jN, instead pass MAKE_JOBS to HOTSPOT_BUILD_JOBS
PARALLEL_BUILD=		No

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			ALT_CUPS_HEADERS_PATH="${LOCALBASE}/include" \
			ALT_DEVTOOLS_PATH="${LOCALBASE}/bin" \
			SKIP_FASTDEBUG_BUILD=true \
			DEV_ONLY=true \
			NO_DOCS=true \
			CC="${CC}" \
			CXX="${CXX}" \
			DEFAULT_LIBPATH="/usr/lib:${X11BASE}/lib:${LOCALBASE}/lib" \
			USER="${USER}" \
			HOTSPOT_BUILD_JOBS=${MAKE_JOBS}

# Error message for distfile.
FETCH_MANUALLY=		"You must manually fetch the distribution files, place"
FETCH_MANUALLY+=	"them in ${FULLDISTDIR} and then run make again."
FETCH_MANUALLY+=	"Get the JDK 6u3 Source file:"
FETCH_MANUALLY+=	" http://download.java.net/jdk6/6u3/promoted/b05/${JRLSRC}"
FETCH_MANUALLY+=	"and the JDK Binaries file:"
FETCH_MANUALLY+=	" http://download.java.net/jdk6/6u3/promoted/b05/${JRLBIN}"
FETCH_MANUALLY+=	"and the Mozilla Binaries file:"
FETCH_MANUALLY+=	" http://download.java.net/jdk6/6u3/promoted/b05/${JRLMOZ}"
FETCH_MANUALLY+=	""
FETCH_MANUALLY+=	"Get the BSD patchset file:"
FETCH_MANUALLY+=	" ${PATCHSET}"
FETCH_MANUALLY+=	"from http://www.intricatesoftware.com/OpenBSD/java/JDK16JRLConfirm.html"

FLAVORS=		no_web with_ipv6
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=		DONT_ENABLE_IPV6=YES
.endif

# handle jar files in post-extract
EXTRACT_CASES+=		*.jar) true ;;

.if ${FLAVOR:L:Mnative_bootstrap}
INSTALLED!= (pkg_info -e "jdk->=1.6,<1.7" -q && echo yes) || echo no
.if ${INSTALLED:L} != "yes"
ERRORS += "Fatal: This flavor requires an installed 1.6 jdk package"
.endif
BUILD_DEPENDS+=		jdk->=1.6,<1.7:devel/jdk/1.6
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
DISTFILES+=		bsd-jdk16-gensrc.tar.gz \
			xalan-j_2_7_0-bin.tar.gz \
			ecj-3.7.1.jar
FETCH_MANUALLY+=	"Get the file:"
FETCH_MANUALLY+=	"    bsd-jdk16-gensrc.tar.gz"
FETCH_MANUALLY+=	"from http://www.intricatesoftware.com/distfiles/bsd-jdk16-gensrc.tar.gz"
FETCH_MANUALLY+=	"Get the Apache Xalan Java file:"
FETCH_MANUALLY+=	"    xalan-j_2_7_0-bin.tar.gz"
FETCH_MANUALLY+=	"from http://archive.apache.org/dist/xml/xalan-j/"
FETCH_MANUALLY+=	"Get the Eclipse Java Compiler file:"
FETCH_MANUALLY+=	"    ecj-3.7.1.jar"
FETCH_MANUALLY+=	"from http://archive.eclipse.org/eclipse/downloads/drops/R-3.7.1-201109091335/ecj-3.7.1.jar"
MAKE_ENV+=		ALT_BOOTDIR=${WRKDIST} \
			ALT_BOOTSTRAP=yes \
			ECJ_JAR=${FULLDISTDIR}/ecj-3.7.1.jar
.endif

.if !${FLAVOR:L:Mno_web}
MAKE_ENV+=		BUILD_DEPLOY=true
.else
MAKE_ENV+=		BUILD_DEPLOY=false
MESSAGE=		${PKGDIR}/MESSAGE-no_web
.endif

JDKHOME=		jdk-1.6.0
JREHOME=		jre-1.6.0

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
		cd ${WRKDIR}/tmp && \
		${CC} ${CFLAGS} -o ${WRKDIR}/tmp/x_x2zip ${FILESDIR}/x_x2zip.c
.for jar in ${JRLSRC} ${JRLBIN} ${JRLMOZ}
	@cd ${WRKDIR}/tmp && \
		unzip -qo ${FULLDISTDIR}/${jar} X_X && \
		./x_x2zip "YES I ACCEPT THE CLICK THROUGH LICENSE.  " X_X && \
		cd ${WRKDIR} && \
		unzip -q ${WRKDIR}/tmp/X_X.zip -x */lib*.so
.endfor
	@cd ${WRKDIR} && \
		mkdir deploy/src/plugin/share/plugin && \
		mv share/plugin/mozilla_headers_18 deploy/src/plugin/share/plugin
	@cp -f ${FILESDIR}/cacerts ${WRKDIR}/j2se/src/share/lib/security
	@cp ${FILESDIR}/PLATFORM_API_BSDOS_PCM.c ${WRKDIR}/j2se/src/solaris/native/com/sun/media/sound/engine
	@rm -rf ${WRKDIR}/tmp ${WRKDIR}/share

pre-patch:
	@cd ${WRKDIR} &&  \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk16.patches

.if !${FLAVOR:L:Mnative_bootstrap}
post-patch:
	@cd ${WRKDIR}/bin && \
		chmod +x bootscript
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
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -
	cd ${WRKDIR} && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JDKHOME}/LICENSE && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JDKHOME}/jre/LICENSE && \
		${INSTALL_DATA} JavaResearchLicense.txt ${PREFIX}/${JREHOME}/LICENSE

.include <bsd.port.mk>

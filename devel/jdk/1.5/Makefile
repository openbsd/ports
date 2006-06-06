# $OpenBSD: Makefile,v 1.19 2006/06/06 03:02:42 kurt Exp $

ONLY_FOR_ARCHS= 	amd64 i386

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.5.0
DISTNAME=		jdk-1_5_0
PKGNAME=		jdk-${V}p15
PKGNAME-jre=		jre-${V}p15

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre
SUBPACKAGE?=

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

DISTFILES=		${DISTNAME}-src-scsl.zip \
			${DISTNAME}-bin-scsl.zip \
			bsd-jdk15-patches-3.tar.bz2

# Sun Community Source License
# http://www.sun.com/software/communitysource/j2se/java2/license.html
PERMIT_PACKAGE_CDROM=	"SCSL"
PERMIT_PACKAGE_FTP=	"SCSL"
PERMIT_DISTFILES_CDROM= "SCSL"
PERMIT_DISTFILES_FTP=	"SCSL"

# TCK (Technology Compatibility Kit) covered by yet another license...
NO_REGRESS=		yes

VMEM_WARNING=		Yes
BUILD_DEPENDS=		:gtar-*:archivers/gtar \
			:zip-*:archivers/zip
RUN_DEPENDS=		:zip-*:archivers/zip
USE_MOTIF=		openmotif
MODULES=		converters/libiconv
WANTLIB=		X11 Xext Xi Xp Xt Xtst c m ossaudio pthread stdc++ z

.if defined(PACKAGING) && empty(SUBPACKAGE)
WANTLIB+=		Xmu
.endif

USE_GMAKE=		Yes

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			SKIP_COMPARE_IMAGES="YES" \
			DONT_BUILD_DOCS="YES" \
			DONT_BUILD_INSTALL="YES" \
			LANG="C" \
			CC="${CC}" \
			CXX="${CXX}" \
			DEFAULT_LD_LIBRARY_PATH="/usr/lib:/usr/X11R6/lib:${LOCALBASE}/lib"

# Error message for distfile.
FETCH_MANUALLY=		"You must manually fetch the distribution files, place"
FETCH_MANUALLY+=	"them in ${FULLDISTDIR} and then run make again."
FETCH_MANUALLY+=	"Get the SCSL source \& binary files:"
FETCH_MANUALLY+=	"    ${DISTNAME}-src-scsl.zip"
FETCH_MANUALLY+=	"    ${DISTNAME}-bin-scsl.zip"
FETCH_MANUALLY+=	"from http://wwws.sun.com/software/communitysource/j2se/java2/download.html"
FETCH_MANUALLY+=	"Get the BSD patchset file:"
FETCH_MANUALLY+=	"    bsd-jdk15-patches-3.tar.bz2"
FETCH_MANUALLY+=	"from http://www.eyesbeyond.com/freebsddom/java/jdk15.html"

FLAVORS=		no_web with_ipv6
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=		DONT_ENABLE_IPV6="YES"
.endif

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		:jdk-1.5*:devel/jdk/1.5
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
DISTFILES+=		jdk-1_5_0-solaris-i586.tar.Z \
			xalan-j_2_7_0-bin.tar.gz
FETCH_MANUALLY+=	"Get the solaris x86 jdk file:"
FETCH_MANUALLY+=	"    jdk-1_5_0-solaris-i586.tar.Z"
FETCH_MANUALLY+=	"from http://java.sun.com/products/archive/j2se/5.0/index.html"
FETCH_MANUALLY+=	"Get the Apache Xalan Java file:"
FETCH_MANUALLY+=	"    xalan-j_2_7_0-bin.tar.gz"
FETCH_MANUALLY+=	"from http://www.apache.org/dist/xml/xalan-j/"
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
BUILD_DEPENDS+=		:mozilla-devel-*:www/mozilla,-devel
. if ${MACHINE_ARCH} == "amd64"
MESSAGE=		${PKGDIR}/MESSAGE-amd64
. endif
.else
#no plugin - no messages
MESSAGE=		/dev/null
MAKE_ENV+=		DONT_BUILD_DEPLOY="YES"
.endif

JDKHOME=		jdk-${V}
JREHOME=		jre-${V}

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

.if !${FLAVOR:L:Mnative_bootstrap}
post-extract:
	@mkdir -p ${OUTPUTDIR}/classes
	@cd ${OUTPUTDIR}/classes && \
		${LOCALBASE}/kaffe/bin/jar xf ${WRKDIR}/${RT_JAR} && \
		${LOCALBASE}/kaffe/bin/jar xf ${WRKDIR}/${TOOLS_JAR} && \
		rm -rf META-INF
	@rm -rf ${WRKDIR}/SUNWj5*
.endif

pre-patch:
	@cp -f ${FILESDIR}/cacerts ${WRKDIR}/j2se/src/share/lib/security
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
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
	@rm -rf ${JDKIMAGEDIR}/demo/jfc/SwingSet2/resources \
		${JDKIMAGEDIR}/demo/plugin/jfc/SwingSet2/resources \
		${JDKIMAGEDIR}/man/ja \
		${JDKIMAGEDIR}/man/ja_JP.eucJP \
		${JREIMAGEDIR}/man/ja \
		${JREIMAGEDIR}/man/ja_JP.eucJP

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.16 2006/10/31 19:48:12 kurt Exp $
# $FreeBSD: /repoman/r/pcvs/ports/java/jdk14/Makefile,v 1.79 2004/08/18 07:06:03 glewis Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.4.2
DISTNAME=		j2sdk-1_4_2
PKGNAME=		jdk-${V}p9
PKGNAME-jre=		jre-${V}p9

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

DISTFILES=		${DISTNAME}-src-scsl.zip \
			${DISTNAME}-bin-scsl.zip \
			bsd-jdk14-patches-7.tar.gz

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
RUN_DEPENDS=		:zip-*:archivers/zip \
			:ghostscript-fonts-*:print/ghostscript/gnu-fonts
LIB_DEPENDS=		iodbc.>=2::databases/iodbc
USE_MOTIF=		openmotif
WANTLIB=		X11 Xext Xi Xm Xmu Xp Xt Xtst c m ossaudio pthread z

USE_GMAKE=		Yes

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			OPENWINHOME="${X11BASE}" \
			ALT_ODBCDIR="${LOCALBASE}/lib" \
			DEV_ONLY="YES" \
			LANG="C" \
			CC="${CC}" \
			CXX="${CXX}" \
			DEFAULT_LD_LIBRARY_PATH="/usr/lib:/usr/X11R6/lib:${LOCALBASE}/lib" \
			HOTSPOT_BUILD_JOBS=`sysctl -n hw.ncpu`

# Error message for distfile.
FETCH_MANUALLY=		"You must manually fetch the distribution files, place"
FETCH_MANUALLY+=	"them in ${FULLDISTDIR} and then run make again."
FETCH_MANUALLY+=	"Get the SCSL source \& binary files:"
FETCH_MANUALLY+=	"    ${DISTNAME}-src-scsl.zip"
FETCH_MANUALLY+=	"    ${DISTNAME}-bin-scsl.zip"
FETCH_MANUALLY+=	"from http://wwws.sun.com/software/communitysource/j2se/java2/download.html"
FETCH_MANUALLY+=	"Get the BSD patchset file:"
FETCH_MANUALLY+=	"    bsd-jdk14-patches-7.tar.gz"
FETCH_MANUALLY+=	"from http://www.eyesbeyond.com/freebsddom/java/jdk14.html"

FLAVORS=		no_plugin no_webstart with_ipv6
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if !${FLAVOR:L:Mwith_ipv6}
PATCH_LIST=		disable-ipv6 patch-*
.endif

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		:jdk-1.4*:devel/jdk/1.4
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
DISTFILES+=		j2sdk-1_4_2-linux-i586.bin
FETCH_MANUALLY+=	"Get the linux binary sdk file:"
FETCH_MANUALLY+=	"    j2sdk-1_4_2-linux-i586.bin"
FETCH_MANUALLY+=	"from http://java.sun.com/products/archive/j2se/1.4.2/"
BUILD_DEPENDS+=		:jdk-linux->=1.3.1_10:devel/jdk/1.3-linux
ALT_BOOTDIR2=		${LOCALBASE}/jdk1.3.1-linux
MAKE_ENV+=		ALT_BOOTDIR="${WRKDIST}"
MAKE_ENV+=		ALT_BOOTDIR2="${ALT_BOOTDIR2}"
MAKE_ENV+=		MANUAL_BOOTSTRAP="yes"
LINUXFILES=		j2sdk1.4.2/lib/unpack \
			j2sdk1.4.2/lib/tools.pack \
			j2sdk1.4.2/jre/lib/rt.pack
EXTRACT_CASES+=		*.bin) \
			perl -p0777 -e "s/.*?PK\03\04/PK\03\04/s" ${FULLDISTDIR}/$$archive > \
				${WRKDIR}/$$archive.zip && \
			unzip -j ${WRKDIR}/$$archive ${LINUXFILES} ;;
SYSCTL=			${SUDO} sysctl -w kern.emul.linux
.endif

.if !${FLAVOR:L:Mno_plugin}
BUILD_DEPENDS+=		:nspr-*:devel/nspr
.else
#no plugin - no messages
MESSAGE=		/dev/null
MAKE_ENV+=		NO_PLUGIN="YES"
.endif

.if ${FLAVOR:L:Mno_webstart}
MAKE_ENV+=		NO_JAVAWS="YES"
.endif

JDKHOME=		jdk-${V}
JREHOME=		jre-${V}

SUBST_VARS=		JDKHOME JREHOME
SYSTRACE_SUBST_VARS=	LOCALBASE

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/control/make
OUTPUTDIR=		${WRKDIR}/control/build/bsd-i586
JDKIMAGEDIR=		${OUTPUTDIR}/j2sdk-image
JDKIMAGEDIR_G=		${OUTPUTDIR}/j2sdk-debug-image
JREIMAGEDIR=		${OUTPUTDIR}/j2re-image
CACERTSDIRS=		j2se/src/share/lib/security \
			deploy/src/javaws/src/share/config

.if !${FLAVOR:L:Mnative_bootstrap}
# The removal of /tmp/unpack.log is to workaround a security issue
# described here:
#   http://www.securityfocus.com/archive/1/343038
post-extract:
	@sysctl -n kern.emul.linux > ${WRKDIR}/.emul_linux
	@${SYSCTL}=1
	@rm -f /tmp/unpack.log
	@cd ${WRKDIR} && \
		./unpack tools.pack tools.jar && \
		./unpack rt.pack rt.jar
	@rm -f /tmp/unpack.log
	@mkdir -p ${OUTPUTDIR}/classes
	@cd ${OUTPUTDIR} && \
		${TAR} xzf ${WRKDIR}/jdk14-bootstrap-src.tar.gz
	@cd ${OUTPUTDIR}/classes && \
		xargs ${ALT_BOOTDIR2}/bin/jar xf ${WRKDIR}/tools.jar < ${FILESDIR}/tools_jar_class_list && \
		xargs ${ALT_BOOTDIR2}/bin/jar xf ${WRKDIR}/rt.jar < ${FILESDIR}/rt_jar_class_list
.endif

pre-patch:
.for dir in ${CACERTSDIRS}
	@cp -f ${FILESDIR}/cacerts ${WRKDIR}/${dir}
.endfor
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk14.patches

.if !${FLAVOR:L:Mnative_bootstrap}
post-patch:
	@cd ${WRKDIR}/bin && \
		${CHMOD} +x bootscript
.for prog in java javac javah jar
	@cd ${WRKDIR}/bin && \
		ln -s bootscript ${prog}
.endfor

pre-build:
	@${SYSCTL}=1
.endif

post-build:
	@rm -rf ${JDKIMAGEDIR}/demo/jfc/SwingSet2/resources \
		${JDKIMAGEDIR}/demo/plugin/jfc/SwingSet2/resources \
		${JDKIMAGEDIR}/man/ja \
		${JDKIMAGEDIR}/man/ja_JP.eucJP \
		${JREIMAGEDIR}/man/ja \
		${JREIMAGEDIR}/man/ja_JP.eucJP
.if !${FLAVOR:L:Mnative_bootstrap}
	@${SYSCTL}=`cat ${WRKDIR}/.emul_linux`
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -

.include <bsd.port.mk>

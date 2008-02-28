# $OpenBSD: Makefile,v 1.25 2008/02/28 14:54:56 kurt Exp $
# $FreeBSD: /repoman/r/pcvs/ports/java/jdk14/Makefile,v 1.79 2004/08/18 07:06:03 glewis Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT-main=		Java2(TM) Standard Edition Dev Kit v${V}
COMMENT-jre=		Java2(TM) Standard Edition Runtime Environment v${V}
V=			1.4.2
DISTNAME=		j2sdk-1_4_2
PKGNAME=		jdk-${V}
PKGNAME-main=		jdk-${V}p15
PKGNAME-jre=		jre-${V}p15

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-main -jre

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

DISTFILES=		${DISTNAME}-src-scsl.zip \
			${DISTNAME}-bin-scsl.zip \
			bsd-jdk14-patches-8.tar.gz

# Sun Community Source License
# http://www.sun.com/software/communitysource/j2se/java2/license.html
PERMIT_PACKAGE_CDROM=	SCSL
PERMIT_PACKAGE_FTP=	SCSL
PERMIT_DISTFILES_CDROM= SCSL
PERMIT_DISTFILES_FTP=	SCSL

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

USE_X11=		Yes
USE_GMAKE=		Yes

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			OPENWINHOME="${X11BASE}" \
			ALT_ODBCDIR="${LOCALBASE}/lib" \
			DEV_ONLY="YES" \
			LANG="C" \
			CC="${CC}" \
			CXX="${CXX}" \
			USER="${USER}" \
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
FETCH_MANUALLY+=	"    bsd-jdk14-patches-8.tar.gz"
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
BUILD_DEPENDS+=		:kaffe->=1.1.7p1:lang/kaffe
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/kaffe"
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

pre-patch:
.for dir in ${CACERTSDIRS}
	@cp -f ${FILESDIR}/cacerts ${WRKDIR}/${dir}
.endfor
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk14.patches

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

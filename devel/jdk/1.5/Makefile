# $OpenBSD: Makefile,v 1.6 2005/11/22 14:43:05 kurt Exp $

ONLY_FOR_ARCHS= 	i386

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.5.0
DISTNAME=		jdk-1_5_0
PKGNAME=		jdk-${V}p2
PKGNAME-jre=		jre-${V}p2

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre
SUBPACKAGE?=

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

DISTFILES=		${DISTNAME}-src-scsl.zip \
			${DISTNAME}-bin-scsl.zip \
			bsd-jdk15-patches-2.tar.bz2

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
WANTLIB=		X11 Xext Xi Xp Xt Xtst c m ossaudio pthread stdc++

.if defined(PACKAGING) && empty(SUBPACKAGE)
WANTLIB+=		Xmu
.endif

USE_GMAKE=		Yes

TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			SKIP_COMPARE_IMAGES="YES" \
			DONT_BUILD_DOCS="YES" \
			DONT_BUILD_DEPLOY="YES" \
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
FETCH_MANUALLY+=	"    bsd-jdk15-patches-2.tar.bz2"
FETCH_MANUALLY+=	"from http://www.eyesbeyond.com/freebsddom/java/jdk15.html"

FLAVORS=		with_ipv6
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if !${FLAVOR:L:Mwith_ipv6}
MAKE_ENV+=		DONT_ENABLE_IPV6="YES"
.endif

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		:jdk-1.5*:devel/jdk/1.5
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
BUILD_DEPENDS+=		:jdk-1.4*:devel/jdk/1.4
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/jdk-1.4.2/"
.endif

JDKHOME=		jdk-${V}
JREHOME=		jre-${V}

SUBST_VARS=		JDKHOME JREHOME

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/control/make
OUTPUTDIR=		${WRKDIR}/control/build/bsd-i586
JDKIMAGEDIR=		${OUTPUTDIR}/j2sdk-image
JDKIMAGEDIR_G=		${OUTPUTDIR}/j2sdk-debug-image
JREIMAGEDIR=		${OUTPUTDIR}/j2re-image

pre-patch:
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk15.patches

post-build:
	@rm -rf ${JDKIMAGEDIR}/demo/jfc/SwingSet2/resources \
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

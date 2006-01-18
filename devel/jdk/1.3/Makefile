# $OpenBSD: Makefile,v 1.17 2006/01/18 15:12:55 kurt Exp $
# $FreeBSD: ports/java/jdk12/Makefile,v 1.11 2002/08/19 20:47:04 glewis Exp $

ONLY_FOR_ARCHS= 	arm i386 powerpc

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.3.1
DISTNAME=		j2sdk-1_3_1-src
PKGNAME=		jdk-${V}p5
PKGNAME-jre=		jre-${V}p5

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/index.html

MAINTAINER=		Kurt Miller <kurt@openbsd.org>

DISTFILES=		j2sdk-1_3_1-src.tar.gz
DISTFILES+=		bsd-jdk131-patches-9.tar.gz

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
USE_MOTIF=		openmotif

USE_GMAKE=		Yes
TAR=			${LOCALBASE}/bin/gtar

MAKE_ENV=		ALT_MOTIF_DIR="${LOCALBASE}" \
			OPENWINHOME="${X11BASE}" \
			OTHER_CFLAGS="${CFLAGS}" \
			BUILD_NUMBER="`whoami`-`date '+%Y-%m-%d-%H:%M'`" \
			HAVE_DPS="yes"

# Error message for distfile.
FETCH_MANUALLY=	"You must manually fetch the distribution files, place"
FETCH_MANUALLY+="them in ${FULLDISTDIR} and then run make again."
FETCH_MANUALLY+="Get the SCSL source file:"
FETCH_MANUALLY+="    j2sdk-1_3_1-src.tar.gz"
FETCH_MANUALLY+="from http://wwws.sun.com/software/communitysource/j2se/java2/download.html"
FETCH_MANUALLY+="Get the BSD patchset file:"
FETCH_MANUALLY+="    bsd-jdk131-patches-9.tar.gz"
FETCH_MANUALLY+="from http://www.eyesbeyond.com/freebsddom/java/jdk13.html"

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		:jdk-1.3*:devel/jdk/1.3
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
DISTFILES+=		j2sdk-1_3_1-linux-i386.bin
FETCH_MANUALLY+=	"Get the linux binary sdk file:"
FETCH_MANUALLY+=	"    j2sdk-1_3_1-linux-i386.bin"
FETCH_MANUALLY+=	"from http://java.sun.com/products/archive/j2se/1.3.1/"
DISTFILES+=             bootstrap-src-jdk131-1.tar.gz
FETCH_MANUALLY+=        "Get the bootstrap source dist file:"
FETCH_MANUALLY+=        "    bootstrap-src-jdk131-1.tar.gz"
FETCH_MANUALLY+=        "from http://www.intricatesoftware.com/OpenBSD/java/jdk13.html"
BUILD_DEPENDS+=		::archivers/unzip
MAKE_ENV+=		ALT_BOOTDIR="${WRKDIST}"
LINUXFILES=		jdk1.3.1/lib/tools.jar \
			jdk1.3.1/jre/lib/rt.jar
EXTRACT_CASES+=		*.bin) \
			perl -p0777 -e "s/.*?PK\03\04/PK\03\04/s" ${FULLDISTDIR}/$$archive > \
				${WRKDIR}/$$archive.zip && \
			unzip -j ${WRKDIR}/$$archive ${LINUXFILES} ;;
.  if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST=		patch-* pack-patch-*
.  endif
.endif

WANTLIB=		ICE SM X11 Xext Xp Xt Xtst c dps m ossaudio

ALL_TARGET=		all images

JDKHOME=		jdk-${V}
JREHOME=		jre-${V}

SUBST_VARS=		JDKHOME JREHOME
SYSTRACE_SUBST_VARS=	LOCALBASE

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/j2sdk1.3.1/make
BUILDDIR=         	${WRKDIR}/j2sdk1.3.1/build
CLASSESDIR=		${BUILDDIR}/bsd-${MACHINE_ARCH}/classes
JDKIMAGEDIR=		${BUILDDIR}/bsd-${MACHINE_ARCH}/jdk-image-${MACHINE_ARCH}
JDKIMAGEDIR_G=		${BUILDDIR}/bsd-${MACHINE_ARCH}/jdk-debug-image-${MACHINE_ARCH}
JREIMAGEDIR=		${BUILDDIR}/bsd-${MACHINE_ARCH}/jre-image-${MACHINE_ARCH}
CACERTSDIR=		${WRKDIR}/j2sdk1.3.1/src/share/lib/security

.if !${FLAVOR:L:Mnative_bootstrap}
post-extract:
	@mv ${BUILDDIR}/bootsrc ${BUILDDIR}/bsd-${MACHINE_ARCH}
	@mkdir -p ${CLASSESDIR}
	@cd ${CLASSESDIR} && \
		xargs unzip -q ${WRKDIR}/tools.jar < ${FILESDIR}/tools_jar_class_list && \
		xargs unzip -q ${WRKDIR}/rt.jar < ${FILESDIR}/rt_jar_class_list
.endif

pre-patch:
	@cp -f ${FILESDIR}/cacerts ${CACERTSDIR}
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
		${PATCH} -p0 -z .orig.bsd --quiet < ${WRKDIR}/jdk131.patches

.if !${FLAVOR:L:Mnative_bootstrap}
post-patch:
	@cd ${WRKDIR}/bin && \
		${CHMOD} +x bootscript
.for prog in java javac javah
	@cd ${WRKDIR}/bin && \
		ln -s bootscript ${prog}
.endfor
.endif

post-build:
	@rm -rf ${JDKIMAGEDIR}/demo/jfc/SwingSet2/resources

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -
	cd ${PREFIX}/${JDKHOME}/include && ln -s openbsd/* .
	cd ${PREFIX}/${JDKHOME}/include-old && ln -s openbsd/* .

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.7 2004/10/12 20:46:22 naddy Exp $
# $FreeBSD: ports/java/jdk12/Makefile,v 1.11 2002/08/19 20:47:04 glewis Exp $

# Requires existing JDK 1.3 to build
ONLY_FOR_ARCHS= 	i386

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.3.1
DISTNAME=		j2sdk-1_3_1-src
PKGNAME=		jdk-${V}
PKGNAME-jre=		jre-${V}

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/communitysource/j2se/java2/index.html

MAINTAINER=		Kurt Miller <truk@optonline.net>

DISTFILES=		j2sdk-1_3_1-src.tar.gz
DISTFILES+=		bsd-jdk131-patches-9.tar.gz

# Sun Community Source License
# http://www.sun.com/981208/scsl/principles.html
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
			HAVE_DPS="yes"

FLAVORS=		no_plugin
PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		:jdk-1.3*:devel/jdk/1.3
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/${JDKHOME}"
.else
BUILD_DEPENDS+=		:jdk-linux->=1.3.1_10:devel/jdk/1.3-linux
MAKE_ENV+=		ALT_BOOTDIR="${LOCALBASE}/jdk1.3.1-linux"
NO_SYSTRACE=		Yes
.endif

.if !${FLAVOR:L:Mno_plugin}
LIB_DEPENDS=		glib.1::devel/glib \
			gtk.1.2::x11/gtk+ \
			nspr4.1::devel/nspr

MODULES=		devel/gettext

MAKE_ENV+=		LIBG_HDRS="${LOCALBASE}/include/glib-1.2" \
			GTK_HDRS="${LOCALBASE}/include/gtk-1.2" \
			LIBIDL_HDRS= \
			INTL_DIR="${LOCALBASE}" \
			BUILD_NUMBER="`whoami`-`date '+%Y-%m-%d-%H:%M'`"

ALL_TARGET=		all plugin images
.else
#no plugin - no messages
MESSAGE=		/dev/null

MAKE_ENV+=		BUILD_NUMBER="`whoami`-`date '+%Y-%m-%d-%H:%M'`-no_plugin"

ALL_TARGET=		all images
.endif

# Error message for distfile.
FETCH_MANUALLY=	"You must manually fetch the source distribution"
FETCH_MANUALLY+="and BSD patches:"
.for file in ${DISTFILES}
FETCH_MANUALLY+="    ${file}"
.endfor
FETCH_MANUALLY+="from http://www.sun.com/software/java2/download.html"
FETCH_MANUALLY+="and http://www.eyesbeyond.com/freebsddom/java/jdk13.html,"
FETCH_MANUALLY+="place it in ${FULLDISTDIR} and then run make again."

JDKHOME=		jdk-${V}
JREHOME=		jre-${V}

SUBST_VARS=		JDKHOME JREHOME

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/j2sdk1.3.1/make
JDKIMAGEDIR=		${WRKDIR}/j2sdk1.3.1/build/bsd-${ARCH}/jdk-image-${ARCH}
JDKIMAGEDIR_G=		${WRKDIR}/j2sdk1.3.1/build/bsd-${ARCH}/jdk-debug-image-${ARCH}
JREIMAGEDIR=		${WRKDIR}/j2sdk1.3.1/build/bsd-${ARCH}/jre-image-${ARCH}
CACERTSDIR=		${WRKDIR}/j2sdk1.3.1/src/share/lib/security

SYSCTL=			${SUDO} sysctl -w kern.emul.linux

pre-patch:
	@cp -f ${FILESDIR}/cacerts ${CACERTSDIR}
	@cd ${WRKDIR} &&  \
		${CHMOD} -R u+w * && \
		${PATCH} -p0 -z .orig.bsd < ${WRKDIR}/jdk131.patches

.if !${FLAVOR:L:Mnative_bootstrap}
pre-build:
	@sysctl -n kern.emul.linux > ${WRKDIR}/.emul_linux
	@${SYSCTL}=1

post-build:
	@${SYSCTL}=`cat ${WRKDIR}/.emul_linux`
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${JDKHOME}
	cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${JDKHOME} -xf - 
	${INSTALL_DATA_DIR} ${PREFIX}/${JREHOME}
	cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${JREHOME} -xf -
	cd ${PREFIX}/${JDKHOME}/include && ln -s openbsd/* .
	cd ${PREFIX}/${JDKHOME}/include-old && ln -s openbsd/* .

.include <bsd.port.mk>

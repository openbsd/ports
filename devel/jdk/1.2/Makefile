# $OpenBSD: Makefile,v 1.2 2002/12/01 00:40:15 ian Exp $
# $FreeBSD: ports/java/jdk12/Makefile,v 1.11 2002/08/19 20:47:04 glewis Exp $
#

COMMENT=		"Java2(TM) Standard Edition Dev Kit v${V}"
COMMENT-debug=		"Java2(TM) Standard Edition Dev Kit Debug Binaries v${V}"
COMMENT-demos=		"Java2(TM) Standard Edition Dev Kit Demo Files v${V}"
COMMENT-jre=		"Java2(TM) Standard Edition Runtime Environment v${V}"
V=			1.2.2
DISTNAME=		jdk1_2_2-src
PKGNAME=		jdk-${V}
FULLPKGNAME=		${PKGNAME}
FULLPKGNAME-debug=	jdk-debug-${V}
FULLPKGNAME-demos=	jdk-demos-${V}
FULLPKGNAME-jre=	jre-${V}

RELEASE_NAME=		"jdk-$(V)/`uname`[bsd-patchset-11]:`whoami`:`date '+%Y/%m/%d-%H:%M'`"

CATEGORIES=		devel/jdk java

MULTI_PACKAGES= 	-jre -demos -debug

# wwws is not a typo in the following:
HOMEPAGE=		http://wwws.sun.com/software/java2/index.html

MAINTAINER=		Christian Edward Gruber <cgruber@israfil.net>

DISTFILES=		jdk1_2_2-src.tar.gz
DISTFILES+=		bsd-jdk122-patches-11.tar.gz

# Sun Community Source License
# http://www.sun.com/981208/scsl/principles.html
PERMIT_PACKAGE_CDROM=	"SCSL"
PERMIT_PACKAGE_FTP=	"SCSL"
PERMIT_DISTFILES_CDROM= "SCSL"
PERMIT_DISTFILES_FTP=	"SCSL"

# TCK (Technology Compatibility Kit) covered by yet another license...
NO_REGRESS=		yes

# Requires existing JDK 1.2 to build; use Linux emul for bootstrapping
ONLY_FOR_ARCHS= 	i386

VMEM_WARNING=		Yes
BUILD_DEPENDS=		:zip-2.*:archivers/zip \
			:jdk-blackdown-1.2pre2:devel/jdk/1.2-blackdown
RUN_DEPENDS=		:zip-2.*:archivers/zip
LIB_DEPENDS=		Xm.2.1:openmotif-2.1.*:x11/openmotif

USE_GMAKE=		Yes
MAKE_FILE=		GNUmakefile

MAKE_ENV=       	HAVE_DPS="no" 
MAKE_ENV+=		ALT_BOOTDIR="/usr/local/jdk1.2-blackdown" 
MAKE_ENV+=		ALT_MOTIF_DIR="${LOCALBASE}" 
MAKE_ENV+=		OPENWINHOME="${X11BASE}" 
MAKE_ENV+=		SYS_CFLAGS="${CFLAGS}" 
MAKE_ENV+=		CLASSPATH="" 
MAKE_ENV+=		JAVA_COMPILER=""
MAKE_ENV+=		CFLAGS=-DDEBUG
MAKE_ENV+=		HAVE_ODBC=no
MAKE_ENV+=		RELEASE_NAME="${RELEASE_NAME}"
#MAKE_ENV+=		ALT_ODBCDIR="${LOCALBASE}" 

ALL_TARGET=     	release-images
PATCH_CMD=      	${PATCH} -p1 -b .orig.bsd -s <

# Deal with Sun's internal build structure
WRKDIST=		${WRKDIR}
WRKSRC=         	${WRKDIR}/build/bsd
JDKIMAGEDIR=    	${WRKSRC}/jdk-image-${ARCH}
JDKIMAGEDIR_G=  	${WRKSRC}/jdk-debug-image-${ARCH}
JREIMAGEDIR=    	${WRKSRC}/jre-image-${ARCH}

# Error message for distfile.
FETCH_DISTFILE_MSG=	"\\nYou must manually fetch the source distribution"
FETCH_DISTFILE_MSG+=	"and BSD patches:\\n\\n"
.for file in ${DISTFILES}
FETCH_DISTFILE_MSG+=	"    ${file}\\n"
.endfor
FETCH_DISTFILE_MSG+=	"\\nfrom http://www.sun.com/software/java2/download.html"
FETCH_DISTFILE_MSG+=	"and http://www.eyesbeyond.com/freebsddom/java/jdk.html,"
FETCH_DISTFILE_MSG+=	"place it in ${DISTDIR} and then run make again.\\n"


do-fetch:
	@for file in ${DISTFILES}; do \
		if [ ! -f ${DISTDIR}/$${file} ]; then \
			echo "${FETCH_DISTFILE_MSG}"; \
			exit 1; \
		fi \
	done

#post-extract:
pre-patch:
	@for dir in build src ext/i18n/build ext/i18n/src ext/iiimp/build; do \
		cd ${WRKDIST}/$${dir} && rm -rf bsd && cp -R solaris bsd ; \
	done
	@cd ${WRKDIST}/build/bsd	&& patch -p1 -b .orig.bsd -s < ${WRKDIST}/build.patches && \
	 cd ${WRKDIST}/build/share	&& patch -p1 -b .orig.bsd -s < ${WRKDIST}/buildshare.patches && \
	 cd ${WRKDIST}/src/bsd		&& patch -p1 -b .orig.bsd -s < ${WRKDIST}/src.patches && \
	 cd ${WRKDIST}/src/share	&& patch -p1 -b .orig.bsd -s < ${WRKDIST}/srcshare.patches && \
	 cd ${WRKDIST}/ext		&& patch -p0 -b .orig.bsd -s < ${WRKDIST}/ext.patches

do-install:
	@mkdir -p ${PREFIX}/${FULLPKGNAME} && \
	 cd ${JDKIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${FULLPKGNAME} -xvf - 
	@cd ${JDKIMAGEDIR_G} && tar -cf - * | tar -C ${PREFIX}/${FULLPKGNAME} -xvf - 
	@mkdir -p ${PREFIX}/${FULLPKGNAME-jre} && \
	 cd ${JREIMAGEDIR} && tar -cf - * | tar -C ${PREFIX}/${FULLPKGNAME-jre} -xvf -
	@cd ${PREFIX}/${FULLPKGNAME}/include && ln -s openbsd/* .
	@cd ${PREFIX}/${FULLPKGNAME}/include-old && ln -s openbsd/* .
#	@cd ${PREFIX}/${FULLPKGNAME}/jre/lib && ln -s ../../lib/tools.jar 
	

test:
	@echo "${SHOW} = \"${${SHOW}}\""

.include <bsd.port.mk>

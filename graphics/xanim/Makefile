# $OpenBSD: Makefile,v 1.11 2000/10/10 00:40:34 espie Exp $

CDROM=        "NOFEE: can not sell"

DISTNAME=xanim-2.80.1
WRKDIST=${WRKDIR}/xanim2801
CATEGORIES= graphics x11
NEED_VERSION=	1.218

MAINTAINER=	Marc Espie <espie@openbsd.org>


DIST_SUBDIR=xanim
MASTER_SITES=ftp://xanim.va.pubnix.com/
MASTER_SITES0=ftp://xanim.va.pubnix.com/modules/

LICENSE_TYPE=	NOFEE
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

BASEDISTFILE=xanim2801.tar.gz
DISTFILES=${BASEDISTFILE}
PATCH_LIST=patch-*

SUP_i386 = xa1.0_cyuv_netbsd386.o.Z:0 \
xa2.0_cvid_netbsd386.o.Z:0 \
xa2.0_iv32_netbsd386.o.Z:0

SUP_m68k = xa1.0_cyuv_netbsd68k.o.Z:0 \
xa2.0_cvid_netbsd68k.o.Z:0 \
xa2.0_iv32_netbsd68k.o.Z:0

SUP_sparc= xa1.0_cyuv_sparcAOUT.o.Z:0 \
xa2.0_cvid_sparcCOFF.o.Z:0 \
xa2.0_iv32_sparcCOFF.o.Z:0

# some architectures support more codecs
.if (${MACHINE_ARCH} == i386)
SUPFILES= ${SUP_i386}
PATCH_LIST+=i386-patch
.endif

.if (${MACHINE_ARCH} == m68k)
SUPFILES= ${SUP_m68k}
PATCH_LIST+=m68k-patch
.endif

.if (${MACHINE_ARCH} == sparc)
SUPFILES=${SUP_sparc}
PATCH_LIST+=sparc-patch
.endif

SUPDISTFILES=${SUP_i386} ${SUP_m68k} ${SUP_sparc}

.if defined(SUPFILES)
DISTFILES   += ${SUPFILES}
EXTRACT_ONLY=${BASEDISTFILE}
post-extract:
	@${ECHO_MSG} "===>  Adding ${MACHINE_ARCH} specific object files"
	@for i in ${SUPFILES:S/:0$//}; do \
		j=`basename $$i`; \
		cp ${FULLDISTDIR}/$$i ${WRKSRC} && uncompress ${WRKSRC}/$$j; \
	done
.endif

post-configure:
	ln ${WRKSRC}/docs/xanim.man ${WRKSRC}

FAKE=		Yes
USE_IMAKE=	Yes
DOCDIR=${PREFIX}/share/doc/xanim

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${WRKSRC}/docs/*; \
	do \
		[ $$file == ${WRKSRC}/docs/xanim.man ] || ${INSTALL_DATA} $$file ${DOCDIR}; \
	done


.include <bsd.port.mk>

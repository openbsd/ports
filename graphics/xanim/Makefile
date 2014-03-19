# $OpenBSD: Makefile,v 1.32 2014/03/19 13:53:29 jasper Exp $

COMMENT=	X11 animation player with support for lots of formats

DISTNAME=xanim-2.80.1
REVISION =	4
WRKDIST=${WRKDIR}/xanim2801
CATEGORIES= graphics x11

MAINTAINER=	Marc Espie <espie@openbsd.org>

DIST_SUBDIR=xanim
MASTER_SITES=http://xanim.polter.net/files/
MASTER_SITES0=ftp://ftp.ut.ee/pub/graphics/xanim/modules/

# License: NOFEE
PERMIT_PACKAGE_CDROM=	No Fee
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xt c m z

USE_GROFF =	Yes

BASEDISTFILE=xanim2801.tar.gz
DISTFILES=${BASEDISTFILE}
PATCH_LIST=patch-*

SUP_i386 = xa1.0_cyuv_linuxELF.o.Z:0 \
xa2.0_cvid_linuxELF.o.Z:0 \
xa2.0_iv32_linuxELF.o.Z:0

# some architectures support more codecs
.if (${MACHINE_ARCH} == i386)
SUPFILES= ${SUP_i386}
PATCH_LIST+=i386-patch
.endif

SUPDISTFILES=${SUP_i386}

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

CONFIGURE_STYLE=	imake
DOCDIR=${PREFIX}/share/doc/xanim

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	for file in ${WRKSRC}/docs/*; \
	do \
		[ $$file == ${WRKSRC}/docs/xanim.man ] || ${INSTALL_DATA} $$file ${DOCDIR}; \
	done


.include <bsd.port.mk>

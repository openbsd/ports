# OpenBSD makefile for:	xv
# Version required:	3.10a
# Date created:		1998-Mar-20
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/03/21 05:38:13 marc Exp $
#

DISTNAME=	xv-3.10a
DIST_SUBDIR=	${DISTNAME}
CATEGORIES=     graphics x11
MASTER_SITES=	ftp://ftp.cis.upenn.edu/pub/xv/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}

# Add support for png
#
MASTER_SITES+=	ftp://swrinde.nde.swri.edu/pub/png/applications/
DISTFILES+=	xv-3.10a-png-1.2d.tar.gz

# Up-to-date jpeg/tiff libraries
#
PATCH_SITES=    ftp://ftp.cis.upenn.edu/pub/xv/
PATCHFILES=     xv-3.10a.JPEG-patch xv-3.10a.TIFF-patch

# Various patches from the XV author's site
#
PATCH_SITES+=	ftp://ftp.trilon.com/pub/xv/patches/
PATCHFILES+=	grabpatch vispatch mp-tiff-patch

MAINTAINER=	ports@OpenBSD.ORG

LIB_DEPENDS=    jpeg\\.7\\.:${PORTSDIR}/graphics/jpeg \
		tiff34\\.1:${PORTSDIR}/graphics/tiff34 \
		png\\.1\\.:${PORTSDIR}/graphics/png

USE_IMAKE=	yes

pre-patch:
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xcmap.diff
	@${PATCH} ${PATCH_ARGS} -p1 < ${WRKDIR}/xvpng.diff
	@${CP} ${WRKDIR}/xvpng.c ${WRKSRC}
	@${CP} ${WRKDIR}/bits/br_png ${WRKSRC}/bits

post-install:
	${MKDIR} ${PREFIX}/share/doc/xv
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xv
.if !defined(NOPORTDOCS)
	${INSTALL_DATA} ${WRKSRC}/docs/xvdocs.ps ${PREFIX}/share/doc/xv
.endif

.include <bsd.port.mk>

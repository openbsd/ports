# OpenBSD makefile for:	Internationalized fvwm2
# Version required:	2.0.46
# Date created:		12 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.4 1998/12/16 22:49:41 marc Exp $
#

DISTNAME=	fvwm-2.0.46
CATEGORIES=	x11

COMES_WITH=	2.3
MIRROR_DISTFILE=no

MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/sources/2.0.x/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/fvwm-users-jp/kits/ \
		ftp://ftp.TokyoNet.AD.JP/pub/X/fvwm/sources/2.0.x/ \
		ftp://ftp.TokyoNet.AD.JP/pub/X/fvwm/fvwm-users-jp/kits/ \
		ftp://ftp.hpc.uh.edu/pub/fvwm/version-2/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm-users-jp-kits.97Oct04.tar.gz

MAINTAINER=	don@OpenBSD.ORG

USE_IMAKE=	yes

# filenames.
PATCH_FIXIT=	kits/patch/fix-2.0.46
PATCH_I18N=	kits/patch/PATCH.I18N
USE_PATCHFILES=	${PATCH_FIXIT} ${PATCH_I18N}

pre-patch:
	@for i in ${USE_PATCHFILES}; do \
		${PATCH} ${PATCH_DIST_ARGS} < ${WRKDIR}/$$i; \
	 done;

post-install:
	@${MKDIR} ${PREFIX}/lib/X11/fvwm2/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icons/*.xpm ${WRKSRC}/icons/*.xbm \
			${WRKSRC}/icons/*.bitmap ${WRKSRC}/icons/*.icon \
		${PREFIX}/lib/X11/fvwm2/pixmaps
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>

# OpenBSD makefile for:	Internationalized fvwm2
# Version required:	2.0.46
# Date created:		12 January 1998
# Whom:			Don Schmidt
#
# $OpenBSD: Makefile,v 1.3 1998/06/13 23:27:08 marc Exp $
#

DISTNAME=	fvwm-2.0.46
COMES_WITH=	2.3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/sources/2.0.x/ \
		ftp://ftp.ics.es.osaka-u.ac.jp/pub/CFAN/fvwm-users-jp/kits/ \
		ftp://ftp.TokyoNet.AD.JP/pub/X/fvwm/sources/2.0.x/ \
		ftp://ftp.TokyoNet.AD.JP/pub/X/fvwm/fvwm-users-jp/kits/ \
		ftp://ftp.hpc.uh.edu/pub/fvwm/version-2/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm-users-jp-kits.97Oct04.tar.gz

MAINTAINER=	don@OpenBSD.ORG

OS_RELEASE!=	uname -r
OS_HAS_XPM=	2.3
.if ( ${OS_RELEASE} < ${OS_HAS_XPM} )
LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm
.endif

USE_IMAKE=	yes
MAN1= 		FvwmAudio.1 FvwmAuto.1 FvwmBacker.1 FvwmBanner.1 \
		FvwmButtons.1 FvwmCascade.1 FvwmCpp.1 FvwmForm.1 \
		FvwmIconBox.1 FvwmIconMan.1 FvwmIdent.1 FvwmM4.1 FvwmPager.1 \
		FvwmSave.1 FvwmSaveDesk.1 FvwmScroll.1 FvwmTalk.1 FvwmTile.1 \
		FvwmWinList.1 fvwm2.1 xpmroot.1

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

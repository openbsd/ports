# OpenBSD makefile for:	kdebase
# Whom:			Yannick Cote
# 
# $OpenBSD: Makefile,v 1.4 1999/06/15 11:18:38 espie Exp $
#

DISTNAME=		kdebase-1.1.1
CATEGORIES=		x11

MASTER_SITES= ftp://ftp.kde.org/pub/kde/stable/1.1.1/distribution/tar/generic/source/bz2/


LIB_DEPENDS=		qt.1.44:${PORTSDIR}/x11/qt \
			jpeg.62:${PORTSDIR}/graphics/jpeg \
			gif.4.1:${PORTSDIR}/graphics/giflib \
			kdecore.1:${PORTSDIR}/x11/kdelibs
			
GNU_CONFIGURE=		yes
USE_BZIP2=	yes
USE_GMAKE= yes

.include <bsd.port.mk>

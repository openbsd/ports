# OpenBSD makefile for:	kdebase
# Whom:			Yannick Cote
# 
# $OpenBSD: Makefile,v 1.3 1999/06/14 23:48:04 espie Exp $
#

DISTNAME=		kdebase-1.0
CATEGORIES=		x11

MASTER_SITES=		ftp://ftp.kde.org/pub/kde/stable/1.0/distribution/tar/generic/source/

BROKEN=		"newer version available soon: kdebase-1.1.1"

LIB_DEPENDS=		qt\\.1\\.:${PORTSDIR}/x11/qt \
			jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
			gif\\.3\\.:${PORTSDIR}/graphics/giflib \
			kdecore\\.1\\.:${PORTSDIR}/x11/kdelibs
			
GNU_CONFIGURE=		yes

.include <bsd.port.mk>

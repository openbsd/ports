# OpenBSD makefile for:	kdebase
# Version required:	1.0
# Date created:		1998-Sep-1
# Whom:			Yannick Cote
# 
# $OpenBSD: Makefile,v 1.1.1.1 1998/11/23 18:56:55 yanick Exp $
#

DISTNAME=		kdebase-1.0
CATEGORIES=		x11

MASTER_SITES=		ftp://ftp.kde.org/pub/kde/stable/1.0/distribution/tar/generic/source/

MAINTAINER=		yanick@fries.net

.if ( ${MACHINE_ARCH} == "sparc" )
BROKEN=         "Currently doesn't build QT on sparc due to g++ bug"
.endif                                                            

LIB_DEPENDS=		qt\\.1\\.:${PORTSDIR}/x11/qt \
			jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
			gif\\.3\\.:${PORTSDIR}/graphics/giflib \
			kdecore\\.1\\.:${PORTSDIR}/x11/kdelibs
			
GNU_CONFIGURE=		yes

.include <bsd.port.mk>

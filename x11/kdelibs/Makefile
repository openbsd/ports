# OpenBSD makefile for:	kdelibs
# Version required:	1.0
# Date created:		1998-Sep-1
# Whom:			Yannick Cote
# 
# $OpenBSD: Makefile,v 1.1.1.1 1998/11/23 19:23:23 yanick Exp $
#

DISTNAME=		kdelibs-1.0
CATEGORIES=		x11

MASTER_SITES=		ftp://ftp.kde.org/pub/kde/stable/1.0/distribution/tar/generic/source/

MAINTAINER=		yanick@fries.net

LIB_DEPENDS=		gif\\.3\\.:${PORTSDIR}/graphics/giflib \
			jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg

GNU_CONFIGURE=		yes

.include <bsd.port.mk>

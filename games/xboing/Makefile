# OpenBSD makefile for:	xboing
# Version required:	2.3
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 02:53:11 angelos Exp $

DISTNAME=	xboing2.3
PKGNAME=	xboing-2.3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	games
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm

USE_IMAKE=	yes
WRKSRC= ${WRKDIR}/xboing

.include <bsd.port.mk>

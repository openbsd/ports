# OpenBSD makefile for:    xpaint
# Version required:     2.4.8
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1997/12/03 03:51:22 angelos Exp $
#

DISTNAME=       xpaint-2.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    jpeg\\.7\\.:${PORTSDIR}/graphics/jpeg \
		tiff\\.3\\.:${PORTSDIR}/graphics/tiff \
		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm   \
		png\\.0\\.:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/xpaint
USE_IMAKE=      yes

.include <bsd.port.mk>

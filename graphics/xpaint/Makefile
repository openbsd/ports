# OpenBSD makefile for:    xpaint
# Version required:     2.4.8
# Date created:         December 2, 1997
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.3 1998/05/06 02:54:46 marc Exp $
#

DISTNAME=       xpaint-2.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
		tiff34\\.1\\.:${PORTSDIR}/graphics/tiff34 \
		Xpm\\.4\\.:${PORTSDIR}/graphics/xpm   \
		png\\.1\\.:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/xpaint
USE_IMAKE=      yes

.include <bsd.port.mk>

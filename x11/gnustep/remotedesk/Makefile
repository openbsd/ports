# $OpenBSD: Makefile,v 1.3 2011/04/18 12:18:25 sebastia Exp $

COMMENT=	GNUstep rdesktop frontend
DISTNAME=	RemoteDesk-0.1
REVISION =	0
PKGNAME=        ${DISTNAME:L}

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS=	x11/rdesktop

.include <bsd.port.mk>

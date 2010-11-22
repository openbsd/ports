# $OpenBSD: Makefile,v 1.2 2010/11/22 08:36:59 espie Exp $

COMMENT=	GNUstep rdesktop frontend
DISTNAME=	RemoteDesk-0.1
PKGNAME=        ${DISTNAME:L}

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS=	x11/rdesktop

.include <bsd.port.mk>

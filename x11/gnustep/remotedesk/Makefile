# $OpenBSD: Makefile,v 1.1.1.1 2010/10/26 17:38:22 sebastia Exp $

COMMENT=	GNUstep rdesktop frontend
DISTNAME=	RemoteDesk-0.1
PKGNAME=        ${DISTNAME:L}

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS=	::x11/rdesktop

.include <bsd.port.mk>

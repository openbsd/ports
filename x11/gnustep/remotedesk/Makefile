# $OpenBSD: Makefile,v 1.17 2019/10/16 13:45:06 ajacoutot Exp $

COMMENT=	GNUstep rdesktop frontend

REVISION =	12
DISTNAME=	RemoteDesk-0.1

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS=	x11/rdesktop

.include <bsd.port.mk>

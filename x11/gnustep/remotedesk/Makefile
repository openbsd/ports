# $OpenBSD: Makefile,v 1.19 2020/08/16 20:35:20 sebastia Exp $

COMMENT=	GNUstep rdesktop frontend

REVISION =	14
DISTNAME=	RemoteDesk-0.1

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS=	x11/rdesktop

.include <bsd.port.mk>

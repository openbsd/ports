# $OpenBSD: Makefile,v 1.16 2018/11/26 14:17:13 sebastia Exp $

COMMENT=	GNUstep rdesktop frontend

REVISION =	11
DISTNAME=	RemoteDesk-0.1

CATEGORIES=	x11
HOMEPAGE=	http://gap.nongnu.org/remotedesk/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES =	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS=	x11/rdesktop

.include <bsd.port.mk>

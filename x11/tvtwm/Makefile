# Makefile for:         tvtwm
# Version required:     pl11
# Date created:         5th December 1994
# Whom:                 gpalmer
#
# $FreeBSD: ports/x11-wm/tvtwm/Makefile,v 1.17 1999/08/31 06:53:15 mharo Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1999/11/08 14:18:36 dugsong Exp $

PKGNAME=	tvtwm-pl11

CATEGORIES=	x11

DISTNAME=	tvtwm.p11

MAINTAINER=	dugsong@monkey.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	window_managers

WRKSRC=		${WRKDIR}/tvtwm

USE_IMAKE=	yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>

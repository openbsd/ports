# OpenBSD makefile for:	xmix
# Version required:	2.1
# Date created:		May 21 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/22 00:21:17 angelos Exp $
#

DISTNAME=	xmix-2.1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/mixers

PATCH_SITES=	${MASTER_SITES}
PATCHFILES=	xmix-2.1.mixers.patch

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes
WRKSRC=		$(WRKDIR)/xmix

pre-install:
	${CP} ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

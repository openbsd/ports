# $OpenBSD: Makefile,v 1.2 1998/10/07 00:38:58 marc Exp $
#

DISTNAME=		xmix-2.1
CATEGORIES=		audio

MAINTAINER=		angelos@openbsd.org

MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/mixers

PATCH_SITES=		${MASTER_SITES}
PATCHFILES=		xmix-2.1.mixers.patch

USE_IMAKE=		yes
WRKSRC=			$(WRKDIR)/xmix

pre-install:
	${CP} ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

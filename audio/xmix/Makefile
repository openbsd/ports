# $OpenBSD: Makefile,v 1.6 2000/02/02 17:08:06 espie Exp $

DISTNAME=		xmix-2.1
CATEGORIES=		audio
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/mixers
NEED_VERSION=		1.175

PATCHFILES=		xmix-2.1.mixers.patch

MAINTAINER=		angelos@openbsd.org

USE_IMAKE=		Yes

WRKSRC=			$(WRKDIR)/xmix

pre-install:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

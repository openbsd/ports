# $OpenBSD: Makefile,v 1.10 2000/03/24 22:11:35 espie Exp $

DISTNAME=		xmix-2.1
CATEGORIES=		audio
NEED_VERSION=		1.191
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/mixers

PATCHFILES=		xmix-2.1.mixers.patch

MAINTAINER=		angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_IMAKE=		Yes

WRKDIST=			$(WRKDIR)/xmix

pre-install:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

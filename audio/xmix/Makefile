# $OpenBSD: Makefile,v 1.12 2000/06/10 17:39:28 espie Exp $

DISTNAME=		xmix-2.1
CATEGORIES=		audio
NEED_VERSION=		1.300
MASTER_SITES=		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	apps/sound/mixers

PATCHFILES=		xmix-2.1.mixers.patch

MAINTAINER=		angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

WRKDIST=			$(WRKDIR)/xmix

pre-install:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

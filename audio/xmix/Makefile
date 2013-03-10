# $OpenBSD: Makefile,v 1.30 2013/03/10 22:55:06 espie Exp $

COMMENT=	X11-based audio mixer
DISTNAME=	xmix-2.1
REVISION=	3
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	Xau Xdmcp ICE SM X11 Xaw Xext Xmu Xt c ossaudio

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mixers/}
PATCHFILES=	xmix-2.1.mixers.patch

CONFIGURE_STYLE=	imake

WRKDIST=	$(WRKDIR)/xmix

USE_GROFF =	Yes
NO_TEST=	Yes

pre-build:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man

pre-install:
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

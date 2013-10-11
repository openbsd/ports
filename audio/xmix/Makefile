# $OpenBSD: Makefile,v 1.31 2013/10/11 20:39:18 naddy Exp $

COMMENT=	X11-based audio mixer
DISTNAME=	xmix-2.1
REVISION=	4
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

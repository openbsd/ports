# $OpenBSD: Makefile,v 1.21 2004/11/21 17:51:47 espie Exp $

COMMENT=	"X11-based audio mixer"
DISTNAME=	xmix-2.1
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xaw Xext Xmu Xt c ossaudio

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mixers/}
PATCHFILES=	xmix-2.1.mixers.patch

CONFIGURE_STYLE=	imake

WRKDIST=	$(WRKDIR)/xmix

NO_REGRESS=	Yes

pre-build:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man

pre-install:
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

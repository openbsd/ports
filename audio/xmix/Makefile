# $OpenBSD: Makefile,v 1.25 2008/01/24 15:57:27 merdely Exp $

COMMENT=	X11-based audio mixer
DISTNAME=	xmix-2.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	Xau Xdmcp ICE SM X11 Xaw Xext Xmu Xt c ossaudio

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mixers/}
PATCHFILES=	xmix-2.1.mixers.patch

CONFIGURE_STYLE=	imake

WRKDIST=	$(WRKDIR)/xmix

USE_X11=	Yes
NO_REGRESS=	Yes

pre-build:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man

pre-install:
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

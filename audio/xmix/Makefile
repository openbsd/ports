# $OpenBSD: Makefile,v 1.19 2002/10/24 22:20:04 naddy Exp $

COMMENT=	"X11-based audio mixer"
DISTNAME=	xmix-2.1
CATEGORIES=	audio

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mixers/}
PATCHFILES=	xmix-2.1.mixers.patch

CONFIGURE_STYLE=	imake

WRKDIST=	$(WRKDIR)/xmix

NO_REGRESS=	Yes

pre-install:
	@cp ${WRKSRC}/xmix.1 ${WRKSRC}/xmix.man
	${INSTALL_DATA} $(WRKSRC)/XMix ${PREFIX}/lib/X11/app-defaults

.include <bsd.port.mk>

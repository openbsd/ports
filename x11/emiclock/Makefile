# $OpenBSD: Makefile,v 1.20 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=	hyper-animated face analog clock for X11

DISTNAME=	emiclock-2.0.2
REVISION=	1
CATEGORIES=	x11

MASTER_SITES=	http://download.vector.co.jp/pack/unix/personal/tokei/

CONFIGURE_STYLE=imake

# custom
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	may not modify/package
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	may not modify/package

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c m

USE_X11=	Yes
NO_REGRESS=	Yes

LANGRES=	resources/R6/EUC/EmiClock.ad
LANGDIR=	$(PREFIX)/lib/X11/ja_JP.EUC/app-defaults
EMICLOCKDIR=	$(PREFIX)/lib/X11/EmiClock
COPYRIGHTS=	COPYRIGHT COPYRIGHT.en

pre-install:
	@${INSTALL_DATA_DIR}	${EMICLOCKDIR}
	@${INSTALL_DATA_DIR}	${LANGDIR}
	cd $(WRKSRC) && ${INSTALL_DATA} $(LANGRES) $(LANGDIR)/EmiClock
	cd $(WRKSRC) && ${INSTALL_DATA} $(COPYRIGHTS) $(EMICLOCKDIR)

.include <bsd.port.mk>

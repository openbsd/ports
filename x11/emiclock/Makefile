# $OpenBSD: Makefile,v 1.26 2013/10/11 21:21:00 naddy Exp $

COMMENT=	hyper-animated face analog clock for X11

DISTNAME=	emiclock-2.0.2
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	http://download.vector.co.jp/pack/unix/personal/tokei/

CONFIGURE_STYLE=imake

# custom
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	may not modify/package
PERMIT_PACKAGE_CDROM=	may not modify/package

WANTLIB=	ICE SM Xau Xdmcp X11 Xaw Xext Xmu Xpm Xt c m

NO_TEST=	Yes

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

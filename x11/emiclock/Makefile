# $OpenBSD: Makefile,v 1.13 2002/10/29 19:48:58 naddy Exp $

COMMENT=	"hyper-animated face analog clock for X11"

DISTNAME=	emiclock-2.0.2
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.noge.com/pub/EmiClock/X11/

CONFIGURE_STYLE=imake

# Man page makes the license clear
# but asking the author is better (Koba Masayuki)

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

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

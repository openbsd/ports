# OpenBSD makefile for:	EmiClock
# Version required:	1.0.2
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.12 2002/03/21 21:25:55 espie Exp $
#

COMMENT=	"hyper-animated face analog clock for X11"

DISTNAME=	emiclock-2.0.2
CATEGORIES=	x11
NEED_VERSION=	1.515
MASTER_SITES=	ftp://ftp.noge.com/pub/EmiClock/X11/

CONFIGURE_STYLE=imake

# Man page makes the license clear
# but asking the author is better (Koba Masayuki)

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	Yes

USE_X11=	Yes

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

# OpenBSD makefile for:	EmiClock
# Version required:	1.0.2
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/19 05:22:46 angelos Exp $
#

DISTNAME=	EmiClock-1.0.2
PKGNAME=	emiclock-1.0.2
CATEGORIES=	x11
MASTER_SITES=	ftp://sunsite.unc.edu/pub/X11/contrib/applications/

MAINTAINER=	angelos@openbsd.ogr

USE_IMAKE=	yes

LANGRES=	resources/R6/EUC/EmiClock.ad
LANGDIR=	$(X11BASE)/lib/X11/ja_JP.EUC/app-defaults
EMICLOCKDIR=	$(X11BASE)/lib/X11/EmiClock
COPYRIGHTS=	COPYRIGHT COPYRIGHT.E

pre-install:
	@if [ ! -d $(EMICLOCKDIR) ] ; then mkdir -p $(EMICLOCKDIR); fi
	@if [ ! -d $(LANGDIR) ] ; then mkdir -p $(LANGDIR); fi
	cd $(WRKSRC); install -c -m 0444 $(LANGRES) $(LANGDIR)/EmiClock
	cd $(WRKSRC); install -c -m 0444 $(COPYRIGHTS) $(EMICLOCKDIR)
#	cd $(WRKSRC); make install.man

.include <bsd.port.mk>

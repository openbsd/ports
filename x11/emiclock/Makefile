# OpenBSD makefile for:	EmiClock
# Version required:	1.0.2
# Date created:		May 19 1998
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.4 2000/04/02 13:01:25 espie Exp $
#

DISTNAME=	EmiClock-1.0.2
PKGNAME=	emiclock-1.0.2
CATEGORIES=	x11
NEED_VERSION=	1.230
MASTER_SITES=	ftp://sunsite.unc.edu/pub/X11/contrib/applications/

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	Yes
FAKE=		Yes

# Man page makes the license clear
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No Fee
PERMIT_PACKAGE_CDROM=	No Fee

LANGRES=	resources/R6/EUC/EmiClock.ad
LANGDIR=	$(PREFIX)/lib/X11/ja_JP.EUC/app-defaults
EMICLOCKDIR=	$(PREFIX)/lib/X11/EmiClock
COPYRIGHTS=	COPYRIGHT COPYRIGHT.E

pre-install:
	@${INSTALL_DATA_DIR}	${EMICLOCKDIR}
	@${INSTALL_DATA_DIR}	${LANGDIR}
	cd $(WRKSRC) && ${INSTALL_DATA} $(LANGRES) $(LANGDIR)/EmiClock
	cd $(WRKSRC) && ${INSTALL_DATA} $(COPYRIGHTS) $(EMICLOCKDIR)

.include <bsd.port.mk>

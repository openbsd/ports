# New ports collection makefile for: textedit
# Version required:	1.0
# Date created:		15 Sept 1998
# Whom:			Ian Darwin <ian@darwinsys.com>
#
# $Id: Makefile,v 1.1.1.1 1998/09/16 15:02:03 ian Exp $
#

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors
MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview\\.3\\.:${PORTSDIR}/x11/xview-lib

MAINTAINER=	ian@OpenBSD.ORG

USE_IMAKE=	yes
MAN1=		textedit.1

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/textedit $(PREFIX)/bin/textedit
	$(INSTALL_MAN) $(WRKSRC)/textedit.man $(PREFIX)/man/man1/textedit.1
	#don't really need these as they're included only in this program
	#$(INSTALL_DATA) $(WRKSRC)/textedit.icon $(PREFIX)/include/X11/bitmaps
	#$(INSTALL_DATA) $(WRKSRC)/textedit.mask.icon $(PREFIX)/include/X11/bitmaps

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.2 1998/10/08 23:18:35 marc Exp $
#

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors

MAINTAINER=	ian@OpenBSD.ORG

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.3.:${PORTSDIR}/x11/xview-lib

USE_IMAKE=	yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/textedit $(PREFIX)/bin/textedit
	$(INSTALL_MAN) $(WRKSRC)/textedit.man $(PREFIX)/man/man1/textedit.1
	#don't really need these as they're included only in this program
	#$(INSTALL_DATA) $(WRKSRC)/textedit.icon $(PREFIX)/include/X11/bitmaps
	#$(INSTALL_DATA) $(WRKSRC)/textedit.mask.icon $(PREFIX)/include/X11/bitmaps

.include <bsd.port.mk>

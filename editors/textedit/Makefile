# $OpenBSD: Makefile,v 1.6 2000/03/23 23:09:02 turan Exp $

BROKEN=	depend xview is broken

DISTNAME=	textedit
PKGNAME=	textedit-1.0
CATEGORIES=	editors
NEED_VERSION=	1.223

MAINTAINER=	ian@OpenBSD.ORG

PERMIT_PACKAGE_CDROM=	"No license information"
PERMIT_PACKAGE_FTP=	"No license information"
PERMIT_DISTFILES_CDROM=	"No license information"
PERMIT_DISTFILES_FTP=	"No license information"

MASTER_SITES=	http://www.darwinsys.com/freeware/

LIB_DEPENDS=    xview.3:x11/xview-lib

USE_IMAKE=	Yes

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/textedit $(PREFIX)/bin/textedit
	$(INSTALL_MAN) $(WRKSRC)/textedit.man $(PREFIX)/man/man1/textedit.1
	#don't really need these as they're included only in this program
	#$(INSTALL_DATA) $(WRKSRC)/textedit.icon $(PREFIX)/include/X11/bitmaps
	#$(INSTALL_DATA) $(WRKSRC)/textedit.mask.icon $(PREFIX)/include/X11/bitmaps

.include <bsd.port.mk>

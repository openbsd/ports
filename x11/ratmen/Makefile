# $OpenBSD: Makefile,v 1.4 2005/11/09 01:25:38 jcs Exp $

DISTNAME=	ratmen-2.2.2
CATEGORIES=	x11

# same license as plan9/9menu
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes
WANTLIB=		X11 c

COMMENT=	"launch commands with your keyboard"
MASTER_SITES=	http://www.update.uu.se/~zrajm/programs/ratmen/

NO_REGRESS=	yes

do-build:
	cd $(WRKSRC) && \
	$(CC) -o ratmen -lX11 -L$(X11BASE)/lib -I$(X11BASE)/include ratmen.c && \
	pod2man ratmen.c > ratmen.1

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/ratmen $(PREFIX)/bin/
	$(INSTALL_MAN) $(WRKSRC)/ratmen.1 $(PREFIX)/man/man1/

.include <bsd.port.mk>

# OpenBSD makefile for:   stars-1.0
# Version required:	1.0
# Date created:		24 Dec 1997
# Whom:			ejovi
#
# $OpenBSD: Makefile,v 1.2 1998/02/25 23:38:54 marc Exp $
#

BROKEN=		"required sources no longer exists"
DISTNAME=	stars-1.0-ss-9.03
PKGNAME=	stars-1.0
CATEGORIES=	astro x11
MASTER_SITES=	ftp://hpux.csc.liv.ac.uk/hpux/X11/Demos/stars-1.0/ \
		ftp://askdonald.ask.uni-karlsruhe.de/hpux/X11/Demos/stars-1.0/

MAINTAINER=	joey@OpenBSD.ORG

USE_X11=	yes
WRKSRC=		$(WRKDIR)/$(PKGNAME)

do-build:
	cc -I$(PREFIX)/include -O2 -c $(WRKSRC)/xwin.c -o $(WRKSRC)/xwin.o
	cc -I$(PREFIX)/include -O2 -c $(WRKSRC)/main.c -o $(WRKSRC)/main.o
	cc $(WRKSRC)/main.o $(WRKSRC)/xwin.o -L$(PREFIX)/lib -lX11 -lm -o $(WRKSRC)/stars

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/stars $(PREFIX)/bin/stars

.include <bsd.port.mk>

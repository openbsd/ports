# OpenBSD makefile for:	blast-1.0
# Version required:	1.0
# Date created:		6 January 1998
# Whom:			don
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/01/23 06:00:07 don Exp $
#

DISTNAME=	blast-1.0-ss-9.03
PKGNAME=	blast-1.0
CATEGORIES=	x11
MASTER_SITES=	ftp://hpux.csc.liv.ac.uk/hpux/X11/Demos/blast-1.0/ \
		ftp://ftp.univie.ac.at/systems/hpux/hpux/X11/Demos/blast-1.0/ \
		ftp://hpftp.cict.fr/hpux/X11/Demos/blast-1.0/

MAINTAINER=	don@OpenBSD.ORG

USE_X11=	yes
MAN1=		blast.1

pre-configure:
	${MV} $(WRKDIR)/blast-1.0 $(WRKSRC)

do-build:
	${CC} $(WRKSRC)/blast.c -I${X11BASE}/include -O2 -L$(PREFIX)/lib -lX11 -lXext -o $(WRKSRC)/blast

do-install:
	$(INSTALL_PROGRAM) $(WRKSRC)/blast $(PREFIX)/bin/blast
	$(INSTALL_MAN) $(WRKSRC)/blast.man $(PREFIX)/man/man1/blast.1

.include <bsd.port.mk>

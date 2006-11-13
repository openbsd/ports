# $OpenBSD: Makefile,v 1.8 2006/11/13 10:08:12 steven Exp $

COMMENT=	"finish-the-cycle logic puzzle"
CATEGORIES=	games

MAINTAINER=	Marc Espie <espie@openbsd.org>

DISTNAME=	circuit-0.1.4
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/cigaes/circuit/


# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m

LIB_DEPENDS=	gtk.>=1.2,gdk.>=1.2::x11/gtk+

USE_X11=	Yes

do-build:
	cd ${WRKBUILD} && $(CC) $(CFLAGS) `gtk-config --cflags --libs` circuit.c -o circuit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/circuit ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/circuit.6 ${PREFIX}/man/man6



.include <bsd.port.mk>

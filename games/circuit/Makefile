# $OpenBSD: Makefile,v 1.1.1.1 2002/12/14 17:02:37 espie Exp $

COMMENT=	"finish-the-cycle logic puzzle"
CATEGORIES=	games

MAINTAINER=	Marc Espie <espie@openbsd.org>

DISTNAME=	circuit-0.1
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/cigaes/


# BSD
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+

do-build:
	cd ${WRKBUILD} && $(CC) $(CFLAGS) `gtk-config --cflags --libs` circuit.c -o circuit

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/circuit ${PREFIX}/bin


.include <bsd.port.mk>

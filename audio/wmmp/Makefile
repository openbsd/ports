# $OpenBSD: Makefile,v 1.3 2007/04/12 20:24:30 sturm Exp $

COMMENT=		"wm-dockapp to control MPD"
DISTNAME=		WMmp-0.10.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		audio x11 x11/windowmaker

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= X11 Xau Xdmcp Xext Xpm c

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

CONFIGURE_STYLE=	gnu

USE_X11=		Yes
USE_LIBTOOL=		Yes

.include <bsd.port.mk>

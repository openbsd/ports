# $OpenBSD: Makefile,v 1.6 2010/09/06 00:04:29 sthen Exp $

COMMENT=		wm-dockapp to control MPD
DISTNAME=		WMmp-0.10.0
REVISION=		2
CATEGORIES=		audio x11 x11/windowmaker

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= X11 Xau Xdmcp Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

CONFIGURE_STYLE=	gnu

USE_X11=		Yes
USE_LIBTOOL=		Yes

.include <bsd.port.mk>

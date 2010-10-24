# $OpenBSD: Makefile,v 1.8 2010/10/24 21:00:30 ajacoutot Exp $

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

USE_LIBTOOL=		Yes
USE_GROFF =	Yes

.include <bsd.port.mk>

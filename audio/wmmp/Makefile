# $OpenBSD: Makefile,v 1.10 2010/11/22 08:56:47 jasper Exp $

COMMENT=		wm-dockapp to control MPD
DISTNAME=		WMmp-0.10.0
REVISION=		3
CATEGORIES=		audio x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= X11 Xau Xdmcp Xext Xpm c pthread-stubs xcb

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2011/10/12 12:54:31 jasper Exp $

COMMENT=		wm-dockapp to control MPD
DISTNAME=		WMmp-0.10.0
REVISION=		4
CATEGORIES=		audio x11 x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= X11 Xext Xpm c xcb

MASTER_SITES=		http://mercury.chem.pitt.edu/~shank/

CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes
USE_GROFF =		Yes

.include <bsd.port.mk>

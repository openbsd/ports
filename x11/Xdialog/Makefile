# $OpenBSD: Makefile,v 1.1.1.1 2006/04/23 12:58:39 steven Exp $

COMMENT=	"X11 counterpart of curses-based misc/dialog"

DISTNAME=	Xdialog-2.2.0
CATEGORIES=	x11 misc

HOMEPAGE=	http://xdialog.dyns.net/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://thgodef.nerim.net/xdialog/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	X11 Xext Xi c m gdk glib gmodule
BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	gtk.2::x11/gtk+
MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

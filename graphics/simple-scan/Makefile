# $OpenBSD: Makefile,v 1.17 2011/09/28 09:51:36 jasper Exp $

COMMENT=	simple scanning utility

GNOME_PROJECT=	simple-scan
GNOME_VERSION=	3.2.0

CATEGORIES=	graphics

HOMEPAGE=	https://launchpad.net/simple-scan

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 jpeg kvm
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs sane xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

LIB_DEPENDS=	graphics/sane-backends \
		x11/gtk+3

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>

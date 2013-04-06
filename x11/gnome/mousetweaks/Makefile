# $OpenBSD: Makefile,v 1.49 2013/04/06 10:41:58 ajacoutot Exp $

COMMENT=	mouse accessibility enhancements for GNOME

GNOME_PROJECT=	mousetweaks
GNOME_VERSION=	3.8.0

HOMEPAGE=	http://live.gnome.org/Mousetweaks/Home

# GPLv3 - GFDLv1.3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcursor Xfixes Xtst atk-1.0 c cairo cairo-gobject
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pthread z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
RUN_DEPENDS=	devel/gsettings-desktop-schemas>=3.6.0
LIB_DEPENDS=	x11/gtk+3>=3.6.0

MODGNOME_TOOLS= yelp

.include <bsd.port.mk>

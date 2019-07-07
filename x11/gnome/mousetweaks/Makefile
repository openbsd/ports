# $OpenBSD: Makefile,v 1.62 2019/07/07 11:20:53 ajacoutot Exp $

COMMENT=		mouse accessibility enhancements for GNOME

GNOME_PROJECT=		mousetweaks
GNOME_VERSION=		3.32.0

# GPLv3 - GFDLv1.3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcursor Xfixes Xtst atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl pango-1.0 pangocairo-1.0 pthread

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas
LIB_DEPENDS=		x11/gtk+3

MODGNOME_TOOLS=		yelp

CONFIGURE_STYLE=	gnu

# glib-mkenums(1), UnicodeEncodeError:
# 'ascii' codec can't encode character u'\xa9' in position 16: ordinal not in range(128)
MAKE_ENV=		PYTHONIOENCODING=utf8

.include <bsd.port.mk>

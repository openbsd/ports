# $OpenBSD: Makefile,v 1.13 2020/05/14 15:36:42 ajacoutot Exp $

COMMENT=		LaTeX editor for the GNOME desktop

GNOME_PROJECT=		gnome-latex
GNOME_VERSION=		3.36.0

CATEGORIES=		editors print

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender amtk-5 aspell atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject dconf enchant-2 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gspell-1 gtk-3 gtksourceview-4 harfbuzz iconv intl
WANTLIB += lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread tepl-4 uchardet xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			textproc/latexmk \
			devel/xdg-utils # xdg-open(1)

LIB_DEPENDS=		devel/libgee \
			textproc/gspell \
			x11/gnome/tepl

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

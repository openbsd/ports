# $OpenBSD: Makefile,v 1.14 2020/11/06 11:15:13 ajacoutot Exp $

COMMENT=		LaTeX editor for the GNOME desktop

GNOME_PROJECT=		gnome-latex
GNOME_VERSION=		3.38.0

CATEGORIES=		editors print

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender amtk-5 aspell atk-1.0
WANTLIB += atk-bridge-2.0 c cairo cairo-gobject dconf enchant-2
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gspell-1 gtk-3 gtksourceview-4 harfbuzz iconv icudata
WANTLIB += icui18n icuuc intl lzma m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png tepl-5 xcb xcb-render
WANTLIB += xcb-shm xml2 z

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

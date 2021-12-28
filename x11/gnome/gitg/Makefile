# $OpenBSD: Makefile,v 1.21 2021/12/28 09:32:13 ajacoutot Exp $

COMMENT=		graphical user interface for git

GNOME_PROJECT=		gitg
GNOME_VERSION=		41

SHARED_LIBS += gitg-1.0                  1.0 # 0.0.0
SHARED_LIBS += gitg-ext-1.0              0.0 # 0.0.0

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo dazzle-1.0 gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += girepository-1.0 git2-glib-1.0 glib-2.0 gobject-2.0
WANTLIB += gspell-1 gtk-3 gtksourceview-4 intl json-glib-1.0 m
WANTLIB += pango-1.0 peas-1.0 secret-1 xml2

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/json-glib \
			devel/libgee \
			devel/libpeas \
			devel/libgit2/libgit2-glib \
			textproc/gspell \
			x11/gnome/libdazzle \
			x11/gnome/libsecret \
			x11/gtksourceview4

RUN_DEPENDS=		devel/git \
			devel/gsettings-desktop-schemas

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

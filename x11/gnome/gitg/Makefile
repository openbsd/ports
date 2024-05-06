COMMENT=		graphical user interface for git

GNOME_PROJECT=		gitg
GNOME_VERSION=		44
REVISION=		0

SHARED_LIBS += gitg-1.0                  1.0 # 0.0.0
SHARED_LIBS += gitg-ext-1.0              0.0 # 0.0.0

CATEGORIES=		devel

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo dazzle-1.0 gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0
WANTLIB += girepository-1.0 git2-glib-1.0 glib-2.0 gobject-2.0
WANTLIB += gpgme gspell-1 gtk-3 gtksourceview-4 handy-1 intl json-glib-1.0
WANTLIB += m pango-1.0 peas-1.0 secret-1 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/json-glib \
			devel/libgee \
			devel/libpeas \
			devel/libgit2/libgit2-glib \
			security/gpgme \
			textproc/gspell \
			x11/gnome/libdazzle \
			x11/gnome/libsecret \
			x11/gtksourceview4 \
			x11/libhandy

RUN_DEPENDS=		devel/git \
			devel/gsettings-desktop-schemas \
			devel/py-gobject3${MODPY_FLAVOR}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>

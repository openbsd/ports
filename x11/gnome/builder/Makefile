# XXX prctl(2) or procctl(2)
# error: #error "Please submit a patch to support parent-death signal on your OS"

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		43.4

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo clang cmark dspy-1 editorconfig enchant-2
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 git2 git2-glib-1.0
WANTLIB += glib-2.0 gobject-2.0 gtk-4 gtksourceview-5 icuuc intl
WANTLIB += json-glib-1.0 jsonrpc-glib-1.0 m panel-1 pango-1.0
WANTLIB += peas-1.0 portal portal-gtk4 template_glib-1.0 vte-2.91-gtk4
WANTLIB += webkit2gtk-5.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection yelp

BUILD_DEPENDS=		devel/ectags \
			textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		devel/ectags

# python auto-completion
RUN_DEPENDS +=		devel/py-jedi${MODPY_FLAVOR}

# python documentation auto-completion
RUN_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

# see patch-src_plugins_todo_gbp-todo-model_c
RUN_DEPENDS +=		sysutils/ggrep

LIB_DEPENDS=		devel/jsonrpc-glib \
			devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/llvm \
			devel/template-glib \
			devel/vte3,-gtk4 \
			editors/editorconfig-core-c \
			sysutils/dspy \
			sysutils/libportal,-gtk4 \
			textproc/cmark \
			www/webkitgtk4,webkitgtk50 \
			x11/gnome/libpanel \
			x11/gtksourceview5

CONFIGURE_ARGS=		-Dplugin_valgrind=false \
			-Dplugin_flatpak=false \
			-Dplugin_sysprof=false \
			-Dplugin_update_manager=false \
			-Dchannel=other

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

DEBUG_PACKAGES=		${BUILD_PACKAGES}

# disable meson's default of using "-Wl,--as-needed" with ld.bfd;
# build failures due to undefined references are often seen.
.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
CONFIGURE_ARGS +=	-Db_asneeded=false
.endif

# don't pick up llvm-config(1) from base
pre-configure:
	ln -sf ${LOCALBASE}/bin/llvm-config ${WRKDIR}/bin/llvm-config

.include <bsd.port.mk>

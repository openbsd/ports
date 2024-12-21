COMMENT=		IDE for writing GNOME-based software

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		47.2
REVISION=		2

CATEGORIES=		devel

HOMEPAGE=		https://apps.gnome.org/en/Builder/

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 c cairo cmark dex-1 editorconfig gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 git2 git2-glib-1.0 glib-2.0
WANTLIB += gobject-2.0 gom-1.0 gtk-4 gtksourceview-5 intl json-glib-1.0
WANTLIB += jsonrpc-glib-1.0 m panel-1 pango-1.0 peas-2 portal
WANTLIB += portal-gtk4 spelling-1 template_glib-1.0 vte-2.91-gtk4
WANTLIB += webkitgtk-6.0 xml2
WANTLIB += llvm${MODCLANG_VERSION}/lib/clang

MODULES=		devel/dconf \
			devel/meson \
			lang/clang \
			lang/python \
			x11/gnome

MODCLANG_COMPILER_LINKS=No

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection yelp

BUILD_DEPENDS=		devel/ectags \
			textproc/py-sphinx

RUN_DEPENDS=		devel/ectags

# see patch-src_plugins_todo_gbp-todo-model_c
RUN_DEPENDS +=		sysutils/ggrep

# src/plugins/dspy/gbp-dspy-application-addin.c
RUN_DEPENDS +=		sysutils/dspy

LIB_DEPENDS=		${MODCLANG_LIB_DEPENDS} \
			devel/jsonrpc-glib \
			devel/libgit2/libgit2-glib \
			devel/libpeas2 \
			devel/template-glib \
			devel/vte3,-gtk4 \
			editors/editorconfig-core-c \
			sysutils/flatpak/libportal,-gtk4 \
			textproc/cmark \
			textproc/libspelling \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/gom \
			x11/gnome/libdex \
			x11/gnome/libpanel \
			x11/gtksourceview5

# don't pick up llvm-config(1) from base
CONFIGURE_ENV=		LLVM_CONFIG=${LOCALBASE}/bin/llvm-config-${MODCLANG_VERSION}

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

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/plugins/clang/meson.build
# XXX see src/libide/core/meson.build; prevent a dependency on git;
# ninja: error: '/usr/local/bin/git',
# needed by 'src/libide/core/ide-build-ident.h', missing and no known rule to make it
	ln -sf /usr/bin/false ${WRKDIR}/bin/git


.include <bsd.port.mk>

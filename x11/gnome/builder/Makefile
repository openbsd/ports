# $OpenBSD: Makefile,v 1.96 2019/07/18 15:51:13 ajacoutot Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.32.4

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject clang dazzle-1.0 devhelp-3
WANTLIB += enchant-2 fontconfig gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += git2-glib-1.0 gladeui-2 glib-2.0 gobject-2.0 gspell-1
WANTLIB += gtk-3 gtksourceview-4 intl json-glib-1.0 jsonrpc-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += template_glib-1.0 vala-0.44 vte-2.91 webkit2gtk-4.0
WANTLIB += xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection vala yelp

# needs support for variadic macros (__VA_OPT__)
# https://bugs.llvm.org/show_bug.cgi?id=40665
COMPILER=		ports-gcc
COMPILER_LANGS=		c

BUILD_DEPENDS=		devel/ectags \
			devel/libexecinfo \
			textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		devel/ectags

# python auto-completion
RUN_DEPENDS +=		devel/py-jedi${MODPY_FLAVOR}

# python documentation auto-completion
RUN_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

# see patch-src_plugins_todo_gbp-todo-model_c
RUN_DEPENDS +=		sysutils/ggrep

LIB_DEPENDS=		devel/glade \
			devel/jsonrpc-glib \
			devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/llvm \
			devel/template-glib \
			devel/vte3 \
			lang/vala \
			textproc/gspell \
			x11/gnome/devhelp \
			x11/gnome/libdazzle \
			x11/gtksourceview4

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386} # needs 64-bit atomic ops
CFLAGS +=		-march=i586
CXXFLAGS +=		-march=i586
.endif

CONFIGURE_ARGS=		-Dplugin_valgrind=false \
			-Dplugin_flatpak=false \
			-Dplugin_sysprof=false \
			-Dchannel=other

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

# don't pick up llvm-config(1) from base
pre-configure:
	ln -sf ${LOCALBASE}/bin/llvm-config ${WRKDIR}/bin/llvm-config

.include <bsd.port.mk>

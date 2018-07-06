# $OpenBSD: Makefile,v 1.85 2018/07/06 06:04:44 espie Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.28.3
REVISION=		2

SHARED_LIBS +=  gstyle-private            1.0 # 0.0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dazzle-1.0 devhelp-3
WANTLIB += enchant-2 fontconfig gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += git2-glib-1.0 glib-2.0 gobject-2.0 gspell-1 gtk-3 gtksourceview-3.0
WANTLIB += intl json-glib-1.0 jsonrpc-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 template_glib-1.0 vala-0.40
WANTLIB += vte-2.91 webkit2gtk-4.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection vala yelp

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

LIB_DEPENDS=		devel/jsonrpc-glib \
			devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/template-glib \
			devel/vte3 \
			lang/vala \
			textproc/gspell \
			x11/gnome/devhelp \
			x11/gnome/libdazzle>=3.26.3 \
			x11/gtksourceview3

.include <bsd.port.arch.mk>
.if ${ARCH:Mi386} # needs 64-bit atomic ops
CFLAGS+=		-march=i586
CXXFLAGS+=		-march=i586
.endif

CONFIGURE_ARGS=		-Dwith_valgrind=false \
			-Dwith_flatpak=false \
			-Dwith_sysprof=false

# XXX C library 'libclang' not found
CONFIGURE_ARGS +=	-Dwith_clang=false

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.92 2019/04/28 20:52:01 sthen Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.30.3
REVISION=		1

SHARED_LIBS +=  gstyle-private            1.0 # 0.0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject clang dazzle-1.0 devhelp-3
WANTLIB += enchant-2 fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 git2 git2-glib-1.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gspell-1 gtk-3 gtksourceview-4
WANTLIB += intl javascriptcoregtk-4.0 json-glib-1.0 jsonrpc-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pcre2-8
WANTLIB += peas-1.0 pthread soup-2.4 template_glib-1.0 vala-0.42
WANTLIB += vte-2.91 webkit2gtk-4.0 xml2 z

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
CFLAGS+=		-march=i586
CXXFLAGS+=		-march=i586
.endif

CONFIGURE_ARGS=		-Dwith_valgrind=false \
			-Dwith_flatpak=false \
			-Dwith_sysprof=false

MODGNOME_LDFLAGS +=	-L${X11BASE}/lib

# don't pick up llvm-config(1) from base
pre-configure:
	ln -sf ${LOCALBASE}/bin/llvm-config ${WRKDIR}/bin/llvm-config

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.71 2018/01/11 21:24:42 ajacoutot Exp $

COMMENT=		IDE for GNOME

GNOME_PROJECT=		gnome-builder
GNOME_VERSION=		3.26.3

SHARED_LIBS +=  gstyle-private            1.0 # 0.0

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo dazzle-1.0 devhelp-3 enchant fontconfig
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 git2-glib-1.0
WANTLIB += glib-2.0 gobject-2.0 gspell-1 gtk-3 gtksourceview-3.0
WANTLIB += intl jsonrpc_glib-1.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 template_glib-1.0 vala-0.38 vte-2.91
WANTLIB += webkit2gtk-4.0 xml2

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache \
			gobject-introspection vala yelp

BUILD_DEPENDS=		devel/ectags \
			textproc/py-sphinx${MODPY_FLAVOR}

RUN_DEPENDS=		devel/ectags

# python auto-completion
RUN_DEPENDS +=		devel/py-jedi${MODPY_FLAVOR}

# python documentation auto-completion
RUN_DEPENDS +=		textproc/py-lxml${MODPY_FLAVOR}

LIB_DEPENDS=		devel/jsonrpc-glib \
			devel/libgit2/libgit2-glib \
			devel/libpeas \
			devel/template-glib \
			devel/vte3 \
			lang/vala \
			textproc/gspell \
			x11/gnome/devhelp \
			x11/gnome/libdazzle \
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

# XXX remove when merged into a stable release, fixed in:
# https://git.gnome.org/browse/gnome-builder/commit/?id=d5b86775e5c13447c48b3e46a126eba6159ead82
pre-configure:
	echo "#!/bin/sh" >${WRKDIR}/bin/g-ir-scanner
	echo "exec ${LOCALBASE}/bin/g-ir-scanner -L${WRKBUILD}/subprojects/libgd/libgd \"\$$@\"" \
		>>${WRKDIR}/bin/g-ir-scanner
	chmod 0555 ${WRKDIR}/bin/g-ir-scanner

.include <bsd.port.mk>

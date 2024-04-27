COMMENT-main=		GTK3 terminal emulation library
COMMENT-gtk4=		GTK4 terminal emulation library
COMMENT-common=		shared files for vte3

DIST_TUPLE=		gnome GNOME vte 0.76.1 .

PKGNAME-main=		vte3-${GNOME_VERSION}
PKGNAME-gtk4=		vte3-gtk4-${GNOME_VERSION}
PKGNAME-common=		vte3-common-${GNOME_VERSION}

SHARED_LIBS += vte-2.91                  2.10 # 0.7600.0
SHARED_LIBS += vte-2.91-gtk4             0.2 # 0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -gtk4 -common

WANTLIB-main += ${COMPILER_LIBCXX} atk-1.0 c cairo cairo-gobject fribidi
WANTLIB-main += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls gobject-2.0
WANTLIB-main += gtk-3 icuuc intl lz4 m pango-1.0 pangocairo-1.0 pcre2-8

WANTLIB-gtk4 += ${COMPILER_LIBCXX} c cairo cairo-gobject fribidi gdk_pixbuf-2.0
WANTLIB-gtk4 += gio-2.0 glib-2.0 gnutls gobject-2.0 gtk-4 icuuc intl
WANTLIB-gtk4 += lz4 m pango-1.0 pangocairo-1.0 pcre2-8

WANTLIB-common += c

MODULES=		devel/meson \
			x11/gnome

# C++20
COMPILER =		base-clang ports-clang

DEBUG_PACKAGES =	-main -gtk4

BUILD_DEPENDS=		devel/gperf

# src/box_drawing_generate.sh
BUILD_DEPENDS+=		shells/bash

LIB_DEPENDS-main=	archivers/lz4 \
			security/gnutls \
			textproc/icu4c \
			x11/gtk+3

RUN_DEPENDS-main=	${BASE_PKGPATH},-common

LIB_DEPENDS-gtk4=	archivers/lz4 \
			security/gnutls \
			textproc/icu4c \
			x11/gtk+4

RUN_DEPENDS-gtk4=	${BASE_PKGPATH},-common

LIB_DEPENDS-common=	# empty
RUN_DEPENDS-common=	# empty

MODGNOME_TOOLS=		gobject-introspection vala

TEST_DEPENDS=		shells/bash

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# -Bsymbolic-functions is not supported by ld.bfd
CONFIGURE_ARGS +=	-D_b_symbolic_functions=false
.endif

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

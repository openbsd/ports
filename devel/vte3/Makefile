# $OpenBSD: Makefile,v 1.100 2019/11/10 16:47:31 cwen Exp $

COMMENT=		terminal emulation library

GNOME_PROJECT=		vte
GNOME_VERSION=		0.58.2
API_V=			2.91

PKGNAME=		vte3-${GNOME_VERSION}

SHARED_LIBS +=  vte-2.91              2.4      # 5800.2

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnutls gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0 pcre2-8 z
WANTLIB += ${COMPILER_LIBCXX}

MODULES=		devel/meson \
			x11/gnome

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS=		devel/gperf
# src/box_drawing_generate.sh
BUILD_DEPENDS+=		shells/bash

LIB_DEPENDS=		devel/pcre2>=10.22p0 \
			security/gnutls \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_ARGS =	-Dgtk4=false

TEST_DEPENDS=		shells/bash

SUBST_VARS +=		API_V

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mlld}
# -Bsymbolic-functions is not supported by ld.bfd
CONFIGURE_ARGS +=	-D_b_symbolic_functions=false
# Fix X11-related undefined references errors
MODGNOME_LDFLAGS += 	-L${X11BASE}/lib
.endif

# XXX: https://bugzilla.gnome.org/show_bug.cgi?id=675987
post-install:
	rm -r ${WRKINST}${SYSCONFDIR}/profile.d

.include <bsd.port.mk>

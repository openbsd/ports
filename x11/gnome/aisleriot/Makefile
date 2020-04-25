# $OpenBSD: Makefile,v 1.41 2020/04/25 08:55:44 ajacoutot Exp $

COMMENT =		suite of solitaire card games

GNOME_PROJECT =		aisleriot
GNOME_VERSION =		3.22.11

MASTER_SITES =		https://gitlab.gnome.org/GNOME/aisleriot/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX =		.tar.gz

CATEGORIES =		games

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += atk-1.0 c cairo canberra canberra-gtk3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 guile-2.2 intl rsvg-2

MODULES =		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_LDFLAGS=	-L${X11BASE}/lib
MODGNOME_TOOLS =	desktop-file-utils gtk-update-icon-cache yelp

CFLAGS +=		-Wno-strict-prototypes

# need to matche lang/guile2
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

LIB_DEPENDS =		audio/libcanberra,-gtk3 \
			lang/guile2

BUILD_DEPENDS =		shells/bash

CONFIGURE_ARGS =	-Dtheme_kde=false

# XXX horrible hack: make it possible to build when both guile and guile2 are
# installed (take precedence over -I${LOCALBASE}/include because meson reorders
# headers so we can't use MODGNOME_CPPFLAGS)
post-configure:
	sed -i "s,cc,cc -I${LOCALBASE}/include/guile/2.2," ${WRKDIR}/bin/cc

.include <bsd.port.mk>

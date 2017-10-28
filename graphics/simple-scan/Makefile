# $OpenBSD: Makefile,v 1.45 2017/10/28 13:28:06 ajacoutot Exp $

COMMENT=		simple scanning utility

GNOME_PROJECT=		simple-scan
GNOME_VERSION=		3.26.1
REVISION=		0

CATEGORIES=		graphics

HOMEPAGE=		https://launchpad.net/simple-scan

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo colord gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl m sane webp webpmux z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

# meson_compile_gschema.py
MODULES +=		lang/python
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RDEP=		No
MODPY_ADJ_FILES=	data/meson_compile_gschema.py

LIB_DEPENDS=		graphics/libwebp \
			graphics/sane-backends \
			x11/gtk+3 \
			graphics/colord

# xdg-email(1)
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils yelp

# patch-src_simple-scan_vala
MODGNOME_TOOLS +=	vala

.include <bsd.port.mk>

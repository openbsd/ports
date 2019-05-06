# $OpenBSD: Makefile,v 1.55 2019/05/06 08:17:49 ajacoutot Exp $

COMMENT=		simple scanning utility

GNOME_PROJECT=		simple-scan
GNOME_VERSION=		3.32.2.1

CATEGORIES=		graphics

HOMEPAGE=		https://launchpad.net/simple-scan

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject colord colordprivate
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0 sane webp webpmux z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

LIB_DEPENDS=		graphics/libwebp \
			graphics/sane-backends \
			x11/gtk+3 \
			graphics/colord

# xdg-email(1)
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

# patch-src_simple-scan_vala
MODGNOME_TOOLS +=	vala

.include <bsd.port.mk>

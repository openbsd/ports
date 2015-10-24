# $OpenBSD: Makefile,v 1.41 2015/10/24 09:53:54 ajacoutot Exp $

COMMENT=		simple scanning utility

GNOME_PROJECT=		simple-scan
GNOME_VERSION=		3.18.0

CATEGORIES=		graphics

HOMEPAGE=		https://launchpad.net/simple-scan

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject colord colordprivate
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pthread
WANTLIB += sane z

MASTER_SITES=		https://launchpad.net/simple-scan/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		graphics/sane-backends \
			x11/gtk+3 \
			graphics/colord

# xdg-email(1)
RUN_DEPENDS +=		devel/xdg-utils

MODGNOME_TOOLS +=	desktop-file-utils yelp

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

# patch-src_simple-scan_vala, patches/patch-src_ui_vala
MODGNOME_TOOLS +=	vala

.include <bsd.port.mk>

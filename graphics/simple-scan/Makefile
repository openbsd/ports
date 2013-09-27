# $OpenBSD: Makefile,v 1.32 2013/09/27 08:40:57 ajacoutot Exp $

COMMENT=		simple scanning utility

GNOME_PROJECT=		simple-scan
GNOME_VERSION=		3.10.0
REVISION=		0

CATEGORIES=		graphics

HOMEPAGE=		https://launchpad.net/simple-scan

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject colord colordprivate
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread sane sqlite3 z

MASTER_SITES=		https://launchpad.net/simple-scan/${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		graphics/sane-backends \
			x11/gtk+3 \
			graphics/colord

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

USE_GMAKE=		Yes

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf no-autoheader

# patch-src_simple-scan_vala
BUILD_DEPENDS +=	lang/vala

.include <bsd.port.mk>

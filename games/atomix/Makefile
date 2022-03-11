COMMENT=	build molecules out of single atoms

DISTNAME=	atomix-3.22.0
CATEGORIES=	games

HOMEPAGE=	https://wiki.gnome.org/Apps/Atomix

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl m
WANTLIB += pango-1.0 pangocairo-1.0 pthread

MASTER_SITES=	${MASTER_SITE_GNOME:=/sources/atomix/3.22/}
EXTRACT_SUFX=	.tar.xz

MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gtk+3
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
.include <bsd.port.mk>

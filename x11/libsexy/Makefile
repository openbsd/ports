# $OpenBSD: Makefile,v 1.15 2015/03/16 18:07:59 naddy Exp $

COMMENT=	collection of additional GTK widgets

DISTNAME=	libsexy-0.1.11
REVISION=	8

SHARED_LIBS +=  sexy                 0.0      # .2.4
CATEGORIES=	x11 devel

HOMEPAGE=	http://www.chipx86.com/wiki/Libsexy

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://releases.chipx86.com/libsexy/libsexy/

CONFIGURE_STYLE=gnu

MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2 \
		textproc/libxml

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gtk-x11-2.0 xml2

.include <bsd.port.mk>

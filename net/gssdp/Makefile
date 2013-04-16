# $OpenBSD: Makefile,v 1.14 2013/04/16 13:17:01 ajacoutot Exp $

COMMENT=		API for handling SSDP resource discovery and announcement

GNOME_PROJECT=		gssdp
GNOME_VERSION=		0.14.2
REVISION=		0

SHARED_LIBS +=  gssdp-1.0            2.0      # 3.0
CATEGORIES=		net devel

HOMEPAGE=		https://live.gnome.org/GUPnP/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += icudata icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs soup-2.4 xcb
WANTLIB += xcb-render xcb-shm xml2 z graphite2

MODGNOME_TOOLS= 	gi vala

LIB_DEPENDS=		devel/libsoup \
			x11/gtk+2

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.54 2013/07/15 07:14:33 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

# When GNOME_VERSION version change, update GOFFICE_API_VERSION and
# GOFFICE_VERSION in math/gnumeric then bump REVISION.
GNOME_PROJECT=	goffice
GNOME_VERSION=	0.10.4

SHARED_LIBS +=  goffice-0.10         0.0      # 10.3

CATEGORIES=	devel

API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=	GNOME_VERSION API_VERSION

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-common bz2 cairo cairo-gobject croco-0.6 dbus-1
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gs gsf-1 gthread-2.0 gtk-3 harfbuzz
WANTLIB += jpeg lasem-0.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 spectre
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libgsf \
			graphics/lasem \
			print/libspectre \
			x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS=		gi
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-static

post-install:
	rm ${PREFIX}/lib/goffice/${GNOME_VERSION}/plugins/*/*.la

.include <bsd.port.mk>

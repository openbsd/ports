# $OpenBSD: Makefile,v 1.77 2015/04/17 03:42:36 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.10.22

# NOTE: when GNOME_VERSION changes, increment GOFFICE_VERSION and
# GOFFICE_API_VERSION accordingly and bump:
# math/gnumeric
GOFFICE_API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_API_VERSION

SHARED_LIBS +=  goffice-0.10         0.0      # 10.22

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avahi-common bz2 cairo cairo-gobject croco-0.6 dbus-1
WANTLIB += epoxy expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0 graphite2
WANTLIB += gs gsf-1 gthread-2.0 gtk-3 harfbuzz hogweed jpeg lzma
WANTLIB += m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2 spectre
WANTLIB += tasn1 xcb xcb-render xcb-shm xml2 xslt z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		devel/libgsf \
			print/libspectre \
			textproc/libxslt \
			x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection

MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/goffice/${GNOME_VERSION}/plugins/*/*.{a,la}

.include <bsd.port.mk>

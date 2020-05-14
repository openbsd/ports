# $OpenBSD: Makefile,v 1.107 2020/05/14 12:27:33 ajacoutot Exp $

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.10.47

# NOTE: when GNOME_VERSION changes, increment GOFFICE_VERSION and
# GOFFICE_API_VERSION accordingly and bump:
# math/gnumeric
GOFFICE_API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_API_VERSION

SHARED_LIBS +=  goffice-0.10         0.2      # 10.46

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 avahi-common
WANTLIB += bz2 cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gmp gobject-2.0 graphite2 gs gsf-1 gtk-3
WANTLIB += harfbuzz hogweed iconv idn2 intl jpeg lzma m nettle
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread rsvg-2 spectre tasn1 unistring
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z zstd

MODULES=		x11/gnome

LIB_DEPENDS=		devel/libgsf \
			print/libspectre \
			textproc/libxslt \
			x11/gnome/librsvg \
			x11/gtk+3

MODGNOME_TOOLS=		gobject-introspection
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/goffice/${GNOME_VERSION}/plugins/*/*.{a,la}

.include <bsd.port.mk>

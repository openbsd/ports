# $OpenBSD: Makefile,v 1.109 2020/08/13 15:12:52 ajacoutot Exp $

COMMENT=	document centric objects and utilities

GNOME_PROJECT=	goffice
GNOME_VERSION=	0.10.48

# NOTE: when GNOME_VERSION changes, increment GOFFICE_VERSION and
# GOFFICE_API_VERSION accordingly and bump:
# math/gnumeric
GOFFICE_API_VERSION=	${GNOME_VERSION:R}
SUBST_VARS=		GNOME_VERSION GOFFICE_API_VERSION

SHARED_LIBS +=  goffice-0.10         0.3      # 10.48

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += avahi-common bz2 cairo cairo-gobject dbus-1 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0 graphite2
WANTLIB += gs gsf-1 gtk-3 harfbuzz hogweed iconv idn2 intl jpeg
WANTLIB += lzma m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png rsvg-2 spectre tasn1 unistring xcb
WANTLIB += xcb-render xcb-shm xml2 xslt z zstd

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

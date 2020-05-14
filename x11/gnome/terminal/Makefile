# $OpenBSD: Makefile,v 1.172 2020/05/14 15:29:51 jasper Exp $

COMMENT=	GNOME terminal

GNOME_PROJECT=	gnome-terminal
GNOME_VERSION=	3.36.2

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += dconf epoxy expat ffi fontconfig freetype fribidi gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp gnutls
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz hogweed iconv
WANTLIB += icudata icuuc idn2 intl m nautilus-extension nettle
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pcre2-8 pixman-1 png tasn1 unistring uuid vte-2.91
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += ${COMPILER_LIBCXX}

DEBUG_PACKAGES =${BUILD_PACKAGES}

COMPILER =	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		x11/gnome

BUILD_DEPENDS=	devel/gsettings-desktop-schemas \
		x11/gnome/shell
RUN_DEPENDS=	devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/vte3>=0.52.2 \
		sysutils/e2fsprogs \
		x11/gnome/nautilus>=3.22.1

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache vala yelp

CONFIGURE_STYLE =	gnu

post-install:
	rm ${PREFIX}/lib/nautilus/extensions-3.0/*.{a,la}
	rm -r ${PREFIX}/lib/systemd/

.include <bsd.port.mk>

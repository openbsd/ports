# $OpenBSD: Makefile,v 1.71 2019/07/12 20:51:12 sthen Exp $

PORTROACH=		limit:^2

COMMENT=		C++ interface for gtk2+

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		2.24.5
PKGNAME=		gtk2mm-${GNOME_VERSION}
REVISION=		2

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdkmm-2.4            11.0     # 2.0
SHARED_LIBS +=  gtkmm-2.4            11.0     # 2.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atkmm-1.6 cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pixman-1 png pthread sigc-2.0 xcb
WANTLIB += xcb-render xcb-shm z fribidi

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/atk2mm \
			devel/pangomm \
			x11/gtk+2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-static \
			--disable-dependency-tracking

.include <bsd.port.mk>

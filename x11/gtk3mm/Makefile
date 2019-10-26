# $OpenBSD: Makefile,v 1.49 2019/10/26 11:54:48 ajacoutot Exp $

COMMENT=		C++ interface for gtk3+

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		3.24.2
PKGNAME=		gtk3mm-${GNOME_VERSION}

CATEGORIES=		x11 devel

SHARED_LIBS +=  gdkmm-3.0            4.5      # 2.0
SHARED_LIBS +=  gtkmm-3.0            4.5      # 2.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += atkmm-1.6 cairo cairo-gobject cairomm-1.0 epoxy expat
WANTLIB += ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png sigc-2.0 xcb xcb-render xcb-shm z

MODULES=		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS=		devel/atk2mm \
			devel/pangomm \
			x11/gtk+3>=${GNOME_VERSION}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=
CONFIGURE_ARGS=		--enable-static

# XXX needs doxygen and graphviz (and xsltproc)
# pre-generated doc should be part of the official tarball...
CONFIGURE_ARGS +=	--disable-documentation

.include <bsd.port.mk>

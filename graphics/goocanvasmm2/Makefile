# $OpenBSD: Makefile,v 1.6 2013/03/11 11:10:52 espie Exp $

COMMENT=		C++ wrappers for GooCanvas

GNOME_PROJECT=		goocanvasmm
GNOME_VERSION=		1.90.8
PKGNAME=		${GNOME_PROJECT}2-${GNOME_VERSION}
REVISION=		0

SHARED_LIBS +=  goocanvasmm-2.0      0.1      # 6.0


CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/GooCanvas

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += cairo cairo-gobject cairomm-1.0 drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0 gio-2.0 giomm-2.4
WANTLIB += glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0 goocanvas-2.0
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS=		graphics/goocanvas2 \
			x11/gtk3mm

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	ac_cv_path_DOT= \
			ac_cv_path_XSLTPROC= \
			ac_cv_path_DOXYGEN=
CONFIGURE_ARGS+=	--enable-documentation

.include <bsd.port.mk>

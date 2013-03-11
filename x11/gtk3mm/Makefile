# $OpenBSD: Makefile,v 1.17 2013/03/11 11:46:13 espie Exp $

COMMENT=	C++ interface for gtk3+

GNOME_PROJECT=	gtkmm
GNOME_VERSION=	3.6.0
REVISION=	0

PKGNAME=	gtk3mm-${GNOME_VERSION}

CATEGORIES=	devel x11

SHARED_LIBS +=  gdkmm-3.0            2.0      # 2.0
SHARED_LIBS +=  gtkmm-3.0            2.0      # 2.0

HOMEPAGE=	http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atkmm-1.6 atspi cairo cairo-gobject
WANTLIB += cairomm-1.0 dbus-1 drm expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += icudata icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	devel/atk2mm \
		devel/pangomm \
		x11/gtk+3

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	ac_cv_path_DOT= \
		ac_cv_path_XSLTPROC= \
		ac_cv_path_DOXYGEN=
CONFIGURE_ARGS=	--enable-static

# XXX needs doxygen and graphviz (and xsltproc)
# pre-generated doc should be part of the official tarball...
CONFIGURE_ARGS += --disable-documentation

.include <bsd.port.mk>

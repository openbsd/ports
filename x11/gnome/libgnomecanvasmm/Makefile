# $OpenBSD: Makefile,v 1.23 2010/10/18 13:18:15 jasper Exp $

COMMENT=		C++ interface to the graphics library for GNOME

GNOME_PROJECT=		libgnomecanvasmm
GNOME_VERSION=		2.26.0

REVISION=		3

SHARED_LIBS=		gnomecanvasmm-2.6	1.0	# .1.6

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 cairo \
		cairomm-1.0 expat fontconfig freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png z pthread-stubs xcb gthread-2.0 xcb-render \
		xcb-render-util giomm-2.4 glibmm-2.4 sigc-2.0 gtkmm-2.4 \
		gdkmm-2.4 atkmm-1.6 pangomm-1.4 gnomecanvas-2 stdc++

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		:glib2mm->=2.8:devel/glib2mm \
			:libsigc++->=2,<3:devel/libsigc++-2 \
			::x11/gtk2mm \
			::devel/pangomm \
			::x11/gnome/libgnomecanvas

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

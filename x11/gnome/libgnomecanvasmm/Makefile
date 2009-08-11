# $OpenBSD: Makefile,v 1.15 2009/08/11 08:39:38 ajacoutot Exp $

COMMENT=		C++ interface to the graphics library for GNOME

GNOME_PROJECT=		libgnomecanvasmm
GNOME_VERSION=		2.22.0
SHARED_LIBS=		gnomecanvasmm-2.6	0.0	# .1.6
PKGNAME=		${DISTNAME}p3

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 cairo \
		cairomm-1.0 expat fontconfig freetype gailutil gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png z pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		giomm-2.4,glibmm-2.4:glib2mm->=2.8:devel/glib2mm \
			sigc-2.0:libsigc++->=2,<3:devel/libsigc++-2 \
			gtkmm-2.4.>=3,gdkmm-2.4.>=3,atkmm-1.6.>=3::x11/gtk2mm \
			pangomm-1.4::devel/pangomm \
			gnomecanvas-2::x11/gnome/libgnomecanvas

USE_X11=		Yes
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

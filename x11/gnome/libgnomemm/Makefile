# $OpenBSD: Makefile,v 1.8 2009/01/20 23:13:30 ajacoutot Exp $

COMMENT=		C++ interface for libgnome

GNOME_PROJECT=		libgnomemm
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	gnomemm-2.6          0.0      # .1.5

HOMEPAGE=		http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 bonobo-2 bonobo-activation cairo \
		cairomm-1.0 crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 \
		giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt sigc-2.0 ssl util \
		xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gnome-2::x11/gnome/libgnome \
			atkmm-1.6,gdkmm-2.4,gtkmm-2.4::x11/gtk2mm \
			pangomm-1.4::devel/pangomm

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>	

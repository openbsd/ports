# $OpenBSD: Makefile,v 1.11 2009/06/16 11:45:28 sthen Exp $

COMMENT=		C++ interface for libgnome

GNOME_PROJECT=		libgnomemm
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p3

SHARED_LIBS +=	gnomemm-2.6          0.0      # .1.5

HOMEPAGE=		http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 avahi-client avahi-common avahi-glib bonobo-2
WANTLIB += bonobo-activation cairo cairomm-1.0 crypto dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += sigc-2.0 ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gnome-2::x11/gnome/libgnome \
			atkmm-1.6,gdkmm-2.4,gtkmm-2.4::x11/gtk2mm \
			pangomm-1.4::devel/pangomm

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>	

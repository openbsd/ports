# $OpenBSD: Makefile,v 1.19 2010/10/18 13:18:15 jasper Exp $

COMMENT=		C++ interface for libgnome

GNOME_PROJECT=		libgnomemm
GNOME_VERSION=		2.30.0

REVISION=		2

SHARED_LIBS +=	gnomemm-2.6	1.0      # .1.5

HOMEPAGE=		http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 bonobo-2 canberra ltdl ogg pthread stdc++ vorbis
WANTLIB += bonobo-activation cairo cairomm-1.0 crypto dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt
WANTLIB += sigc-2.0 ssl util xml2 z
WANTLIB += pthread-stubs xcb xcb-render xcb-render-util gnome-2
WANTLIB += atkmm-1.6 gdkmm-2.4 gtkmm-2.4 pangomm-1.4 vorbisfile

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		::x11/gnome/libgnome \
			::x11/gtk2mm \
			::devel/pangomm

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

.include <bsd.port.mk>	

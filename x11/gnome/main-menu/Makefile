# $OpenBSD: Makefile,v 1.2 2010/10/26 09:13:35 ajacoutot Exp $

COMMENT=	alternative applications/documents menu for GNOME

GNOME_PROJECT=	gnome-main-menu
GNOME_VERSION=	0.9.15

REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm atk-1.0 c cairo crypto dbus-1 dbus-glib-1
WANTLIB += drm expat fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 kvm m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += ssl util xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm xml2 z art_lgpl_2 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 canberra croco-0.6 execinfo gnome-2
WANTLIB += gnome-desktop-2 gnome-menu gnomecanvas-2 gnomevfs-2 gtop-2.0
WANTLIB += ltdl nautilus-extension ogg panel-applet-2 popt rsvg-2 slab
WANTLIB += startup-notification-1 unique-1.0 vorbis vorbisfile

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

LIB_DEPENDS=	::x11/gnome/libslab \
		::x11/gnome/panel \
		::x11/gnome/nautilus \
		::devel/libgtop2

RUN_DEPENDS=	::x11/gnome/system-monitor \
		::x11/gnome/controlcenter2 \
		::x11/gnome/tracker

DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= gnome-main-menu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_header_iwlib_h=no
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--enable-nautilus-extension

.include <bsd.port.mk>

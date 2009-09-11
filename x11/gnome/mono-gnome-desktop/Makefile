# $OpenBSD: Makefile,v 1.2 2009/09/11 21:32:47 ajacoutot Exp $

COMMENT=	.NET language bindings for the GNOME desktop

GNOME_PROJECT=	gnome-desktop-sharp
GNOME_VERSION=	2.24.0
PKGNAME=	mono-gnome-desktop-${VERSION}p0

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB += crypto dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m ncurses pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread-stubs ssl
WANTLIB += startup-notification-1 stdc++ util wnck-1 xcb xcb-atom
WANTLIB += xcb-aux xcb-event xml2 z enchant

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

LIB_DEPENDS=	panel-applet-2.>=2::x11/gnome/panel \
		gtkhtml-3.14.>=3::www/gtkhtml3 \
		gtksourceview-2.0.>=3::x11/gtksourceview \
		vte.>=13::devel/vte

RUN_DEPENDS=	::x11/gnome/mono-gnome \
		::x11/gnome/libgnomeprintui
BUILD_DEPENDS=	${RUN_DEPENDS}

DLLMAP_FILES=	gnomepanel/gnome-panel-sharp.dll.config \
		vte/vte-sharp.dll.config \
		wnck/wnck-sharp.dll.config \
		gtkhtml/gtkhtml-sharp.dll.config \
		nautilusburn/nautilusburn-sharp.dll.config \
		gnomedesktop/gnomedesktop-sharp.dll.config \
		rsvg/rsvg2-sharp.dll.config \
		gtksourceview/gtksourceview2-sharp.dll.config \
		gnomeprint/gnome-print-sharp.dll.config

CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	find ${WRKSRC} -name *\.pc.in -exec perl -pi \
		-e 's,^prefix=.*,prefix=\@prefix\@,,' {} \;

.include <bsd.port.mk>

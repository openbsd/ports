# $OpenBSD: Makefile,v 1.11 2011/04/13 17:49:40 jasper Exp $

COMMENT=	.NET language bindings for the GNOME desktop

GNOME_PROJECT=	gnome-desktop-sharp
GNOME_VERSION=	2.26.0
PKGNAME=	mono-gnome-desktop-${VERSION}

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 cairo canberra crypto dbus-1 dbus-glib-1
WANTLIB += drm enchant execinfo expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkhtml-3.14 gtksourceview-2.0
WANTLIB += ltdl m ncurses ogg panel-applet-2 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl startup-notification-1 stdc++ util vorbis vorbisfile
WANTLIB += vte wnck-1 xcb xcb-atom xcb-aux xcb-event xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		lang/mono \
		x11/gnome

LIB_DEPENDS=	x11/gnome/panel \
		www/gtkhtml3 \
		x11/gtksourceview \
		devel/vte

RUN_DEPENDS=	x11/gnome/mono-gnome \
		x11/gnome/libgnomeprintui
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

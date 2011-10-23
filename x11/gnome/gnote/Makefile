# $OpenBSD: Makefile,v 1.19 2011/10/23 16:52:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		desktop note-taking application written in C++

GNOME_PROJECT=		gnote
GNOME_VERSION=		0.8.1

SUBST_VARS=		GNOME_VERSION

HOMEPAGE=		http://live.gnome.org/Gnote

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atkmm-1.6 c cairo cairo-gobject cairomm-1.0 drm e2fs-uuid
WANTLIB += expat ffi fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 gtkmm-3.0 m panel-applet-4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre
WANTLIB += pcrecpp pixman-1 png pthread pthread-stubs sigc-2.0
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += dbus-1 dbus-glib-1

BUILD_DEPENDS=		devel/boost>=1.42.0p6
LIB_DEPENDS=		sysutils/e2fsprogs>=1.41.4p5 \
			textproc/libxslt \
			x11/gnome/panel \
			x11/gtk3mm

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS+=	--disable-static

.include <bsd.port.mk>

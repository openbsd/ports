# $OpenBSD: Makefile,v 1.25 2012/06/15 08:30:19 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		desktop note-taking application written in C++

GNOME_PROJECT=		gnote
GNOME_VERSION=		0.8.3
REVISION=		0

SUBST_VARS=		GNOME_VERSION

HOMEPAGE=		http://live.gnome.org/Gnote

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 atkmm-1.6
WANTLIB += c cairo cairo-gobject cairomm-1.0 drm e2fs-uuid expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gdkmm-3.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 gtkmm-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pcrecpp pixman-1 png
WANTLIB += pthread pthread-stubs sigc-2.0 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/boost>=1.42.0p6
LIB_DEPENDS=		sysutils/e2fsprogs>=1.41.4p5 \
			textproc/libxslt \
			x11/gtk3mm

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS+=	--disable-static \
			--disable-applet

.include <bsd.port.mk>

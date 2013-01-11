# $OpenBSD: Makefile,v 1.30 2013/01/11 13:44:25 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		desktop note-taking application written in C++

GNOME_PROJECT=		gnote
GNOME_VERSION=		3.6.1
REVISION=		0

SHARED_LIBS +=	gnote-3.6                 0.0 # 0.0
SHARED_LIBS +=	gnote                     0.0 # 0.0

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
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png
WANTLIB += pthread pthread-stubs sigc-2.0 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z
WANTLIB += ICE SM atk-bridge-2.0 atspi dbus-1 gcrypt gpg-error
WANTLIB += harfbuzz icudata icule icuuc secret-1

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/boost>=1.42.0p6
LIB_DEPENDS=		sysutils/e2fsprogs>=1.41.4p5 \
			textproc/libxslt \
			x11/gnome/libsecret>=0.10 \
			x11/gtk3mm

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

LIBTOOL_FLAGS+= 	--tag=disable-static

CONFIGURE_ARGS+=	--disable-static

post-install:
	rm ${PREFIX}/lib/gnote/addins/${GNOME_VERSION}/*.la

.include <bsd.port.mk>

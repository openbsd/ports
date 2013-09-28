# $OpenBSD: Makefile,v 1.38 2013/09/28 08:51:19 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		desktop note-taking application written in C++

GNOME_PROJECT=		gnote
GNOME_VERSION=		3.8.1
REVISION=		2

SHARED_LIBS +=	gnote-3.8                 0.0 # 0.0
SHARED_LIBS +=	gnote                     0.0 # 0.0

SUBST_VARS=		GNOME_VERSION

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi c cairo cairo-gobject cairomm-1.0 dbus-1 uuid
WANTLIB += expat ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gthread-2.0 gtk-3 gtkmm-3.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangomm-1.4 pcre pixman-1 png pthread
WANTLIB += pthread-stubs secret-1 sigc-2.0 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

BUILD_DEPENDS=		devel/boost>=1.42.0p6 \
			devel/desktop-file-utils
LIB_DEPENDS=		sysutils/e2fsprogs>=1.42.7 \
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

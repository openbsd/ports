# $OpenBSD: Makefile,v 1.265 2017/09/15 13:09:02 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		3.24.2

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL GLESv2 ICE SM X11 X11-xcb Xau Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xtst
WANTLIB += Xxf86vm atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 dbus-glib-1 drm epoxy execinfo expat ffi fontconfig
WANTLIB += freetype gbm gconf-2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-dri2 xcb-glx xcb-render
WANTLIB += xcb-shm xcb-xfixes z

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		textproc/xmlto \
			x11/gnome/settings-daemon

LIB_DEPENDS=		devel/gconf2 \
			devel/json-glib \
			devel/libexecinfo \
			x11/gtk+3

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=		sysutils/consolekit

# gnome.session RequiredComponents
RUN_DEPENDS+=		x11/gnome/settings-daemon \
			x11/gnome/shell

# use for init errors, gnome-session/gsm-util.c
RUN_DEPENDS +=		x11/gnome/zenity

RUN_DEPENDS+=		devel/gsettings-desktop-schemas

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-systemd \
			--enable-consolekit

### patch-gnome-session_Makefile_am
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -fi
###

.include <bsd.port.mk>

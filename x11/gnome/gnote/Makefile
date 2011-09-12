# $OpenBSD: Makefile,v 1.7 2011/09/12 12:04:16 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		desktop note-taking application written in C++

GNOME_PROJECT=		gnote
GNOME_VERSION=		0.7.5

SUBST_VARS=		GNOME_VERSION

HOMEPAGE=		http://live.gnome.org/Gnote

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += atkmm-1.6 c cairo cairomm-1.0 drm e2fs-uuid enchant
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4 gtkspell
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pcre pcrecpp pixman-1 png pthread pthread-stubs sigc-2.0
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 xslt z

BUILD_DEPENDS=		devel/boost>=1.42.0p6
LIB_DEPENDS=		sysutils/e2fsprogs>=1.41.4p5 \
			textproc/gtkspell \
			textproc/libxslt \
			x11/gtk2mm

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnote

LIBTOOL_FLAGS+= 	--tag=disable-static

AUTOCONF_VERSION=	2.68

CONFIGURE_STYLE=	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-static
# needs libpanelappletmm and dbus-c++
CONFIGURE_ARGS+=	--disable-applet \
			--disable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

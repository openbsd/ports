# $OpenBSD: Makefile,v 1.85 2009/08/20 09:40:13 ajacoutot Exp $

COMMENT=		GNOME session

GNOME_PROJECT=		gnome-session
GNOME_VERSION=		2.24.3
PKGNAME=		${DISTNAME}p19

CATEGORIES=		x11

# GPLv2/LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=       ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
	       Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
	       Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common \
	       avahi-glib bonobo-2 bonobo-activation pthread-stubs xcb \
	       bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat \
	       fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
	       gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
	       gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
	       gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
	       pixman-1 png popt pthread ssl startup-notification-1 util xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::textproc/xmlto \
		::x11/gnome/settings-daemon
LIB_DEPENDS=	execinfo::devel/libexecinfo \
		gnomeui-2::x11/gnome/libgnomeui
RUN_DEPENDS=	::x11/gnome/settings-daemon

# Here we hang all the additional ports that will make up a satisfying
# GNOME user experience but are not *needed* per se by this port
RUN_DEPENDS+=		::x11/gnome/alacarte \
			::x11/gnome/applets2 \
			::x11/gnome/audio \
			::x11/gnome/backgrounds \
			::x11/gnome/controlcenter2 \
			::x11/gnome/file-roller \
			:gdm->=2.20.7:x11/gnome/gdm \
			::x11/gnome/gedit \
			::x11/gnome/media \
			::x11/gnome/eog \
			::x11/gnome/terminal \
			::x11/gnome/themes \
			::x11/gnome/themes-extras \
			::x11/gnome/utils \
			::x11/gnome/yelp \
			:gnome-screensaver-*|xscreensaver->=5.07p3:x11/gnome/screensaver \
			::x11/tango-icon-theme  \
			:notification-daemon-*|notification-daemon-xfce-*|xfce4-notifyd-*:sysutils/notification-daemon \
			::x11/gnome/bug-buddy

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gnome-session

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-rebuilds
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"

# XXX gconf2 MODULE changes this value but gsm-gconf.c uses this to
# find the right path for gconftool-2
CONFIGURE_ENV+=		GCONFTOOL=${LOCALBASE}/bin/gconftool-2

MAKE_FLAGS=		XSLTPROC="${LOCALBASE}/bin/xsltproc -nonet"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gnome-session
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/doc/gnome-session/README.OpenBSD

.include <bsd.port.mk>

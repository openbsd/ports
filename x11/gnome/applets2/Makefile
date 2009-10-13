# $OpenBSD: Makefile,v 1.77 2009/10/13 22:53:47 jasper Exp $

COMMENT-main=		applets for use with the GNOME panel
COMMENT-battstat=	GNOME applet for monitoring battery level

GNOME_PROJECT=		gnome-applets
GNOME_VERSION=		2.28.0

PKGNAME-main=		gnome-applets2-${VERSION}p1
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}p0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 avahi-client avahi-common
WANTLIB += avahi-glib bonobo-2 bonobo-activation bonoboui-2 c
WANTLIB += cairo crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gnome-2 gnomecanvas-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png popt pthread pthread-stubs
WANTLIB += ssl util xcb xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes

BUILD_DEPENDS= 		${RUN_DEPENDS}
RUN_DEPENDS=		:gnome-icon-theme->=2.15.91:x11/gnome/icon-theme \
			::x11/gnome/py-gnome-desktop
MODPY_RUNDEP=		No
LIB_DEPENDS=		notify::devel/libnotify \
			panel-applet-2::x11/gnome/panel
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			gstbase-0.10,gstreamer-0.10::multimedia/gstreamer-0.10/core \
			gstaudio-0.10.>=0.1,gstinterfaces-0.10.>=0.1::multimedia/gstreamer-0.10/plugins-base \
			gtop-2.0.>=3.0::devel/libgtop2 \
			xklavier::x11/gnome/libxklavier \
			gucharmap:gucharmap->=1.8:x11/gnome/gucharmap \
			gnomekbd,gnomekbdui::x11/gnome/libgnomekbd

PSEUDO_FLAVORS=		no_battstat
FLAVOR?=

# not all powerpc support apm(4), hence the use of ${MACHINE} and macppc
.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "arm" \
 && ${MACHINE_ARCH} != "i386" && ${MACHINE} != "macppc" \
 && ${MACHINE_ARCH} != "sparc" && ${MACHINE_ARCH} != "sparc64"
FLAVOR+=		no_battstat
.endif

MULTI_PACKAGES=		-main
.if ${FLAVOR:L:Mno_battstat}
CONFIGURE_ARGS+=	--disable-battstat
.else
MULTI_PACKAGES+=	-battstat
.endif

MODGCONF2_SCHEMAS_DIR=	gnome-applets2

CONFIGURE_ARGS+=	--enable-mixer-applet \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB-main=		${WANTLIB} \
			XRes kvm xkbfile gcrypt gnome-desktop-2 gnutls \
			gpg-error gweather execinfo xcb-atom xcb-aux xcb-event \
			soup-2.4 startup-notification-1 tasn1 wnck-1

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-applets2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/invest-applet/invest/invest-chart \
		${WRKSRC}/invest-applet/invest/invest-applet.py

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

# $OpenBSD: Makefile,v 1.88 2010/04/23 13:58:34 ajacoutot Exp $

COMMENT-main=		applets for use with the GNOME panel
COMMENT-battstat=	GNOME applet for monitoring battery level

GNOME_PROJECT=		gnome-applets
GNOME_VERSION=		2.30.0

PKGNAME-main=		gnome-applets2-${VERSION}
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}

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
WANTLIB += ssl util xcb xml2 z xcb-render xcb-render-util

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
			gucharmap:gucharmap->=1.8:x11/gnome/gucharmap

PSEUDO_FLAVORS=		no_battstat
FLAVOR?=

MULTI_PACKAGES=		-main
.if ${FLAVOR:L:Mno_battstat}
CONFIGURE_ARGS+=	--disable-battstat
.else
MULTI_PACKAGES+=	-battstat
RUN_DEPENDS-battstat=	::${BUILD_PKGPATH},-main
.endif

MODGCONF2_SCHEMAS_DIR=	gnome-applets2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-mixer-applet \
			--enable-networkmanager=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB-main=		${WANTLIB} \
			XRes kvm gcrypt gnome-desktop-2 gnutls \
			gpg-error gweather execinfo xcb-atom xcb-aux xcb-event \
			soup-2.4 startup-notification-1 tasn1 wnck-1 \
			gnome-keyring proxy soup-gnome-2.4 sqlite3 eggdbus-1

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-applets2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/invest-applet/invest/invest-chart \
		${WRKSRC}/invest-applet/invest/invest-applet.py

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

.for m in ${MACHINE_ARCH} ${MACHINE}
.if ${APM_ARCHS:L:M$m}
FLAVOR+=	no_battstat
.endif
.endfor

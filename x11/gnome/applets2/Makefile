# $OpenBSD: Makefile,v 1.100 2010/10/02 09:25:11 jasper Exp $

COMMENT-main=		applets for use with the GNOME panel
COMMENT-battstat=	GNOME applet for monitoring battery level

GNOME_PROJECT=		gnome-applets
GNOME_VERSION=		2.32.0

PKGNAME-main=		gnome-applets2-${VERSION}
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}

REVISION-main=		1
REVISION-battstat=	0

CATEGORIES=		x11

# LGPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig notify freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs xcb z xcb-render
WANTLIB += xcb-render-util panel-applet-3

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

MODGNOME_HELP_FILES=	Yes

BUILD_DEPENDS= 		${RUN_DEPENDS}
RUN_DEPENDS=		:gnome-icon-theme->=2.15.91:x11/gnome/icon-theme \
			:py-gnome-desktop->=2.32.0:x11/gnome/py-gnome-desktop
MODPY_RUNDEP=		No
LIB_DEPENDS=		::devel/libnotify \
			:gnome-panel->=2.32.0.2:x11/gnome/panel
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			::multimedia/gstreamer-0.10/core \
			::multimedia/gstreamer-0.10/plugins-base \
			::devel/libgtop2 \
			:gucharmap->=1.8:x11/gnome/gucharmap

# clicking on the multiload-applet will attempt to start gnome-system-monitor
RUN_DEPENDS+=		::x11/gnome/system-monitor

MULTI_PACKAGES=		-main -battstat
ONLY_FOR_ARCHS-battstat = ${APM_ARCHS}
RUN_DEPENDS-battstat=	::${BUILD_PKGPATH},-main


MODGCONF2_SCHEMAS_DIR=	gnome-applets2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-mixer-applet \
			--disable-networkmanager
# polkit support is only for cpufreq which we don't support
CONFIGURE_ARGS+=	--disable-frequency-selector \
			--disable-suid \
			--disable-polkit

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB-main += ${WANTLIB} gstbase-0.10 gstreamer-0.10 gucharmap XRes
WANTLIB-main += kvm gcrypt gnome-desktop-2 gnutls gpg-error gweather
WANTLIB-main += execinfo xcb-atom xcb-aux xcb-event soup-2.4
WANTLIB-main += startup-notification-1 tasn1 wnck-1 gnome-keyring proxy
WANTLIB-main += soup-gnome-2.4 sqlite3 eggdbus-1 gstaudio-0.10
WANTLIB-main += gstinterfaces-0.10 gtop-2.0 ICE ORBitCosNaming-2 SM
WANTLIB-main += art_lgpl_2 avahi-client avahi-common avahi-glib
WANTLIB-main += bonobo-2 bonobo-activation bonoboui-2 canberra crypto
WANTLIB-main += gailutil gnome-2 gnomecanvas-2 gnomevfs-2 ltdl ogg
WANTLIB-main += panel-applet-2 popt ssl util vorbis vorbisfile xml2

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gnome-applets2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/invest-applet/invest/invest-chart \
		${WRKSRC}/invest-applet/invest/invest-applet.py

.include <bsd.port.mk>

.for m in ${MACHINE_ARCH} ${MACHINE}
.  if ${APM_ARCHS:L:M$m}
ENABLE_BATTSTAT=Yes
.  endif
.endfor
.if !defined(ENABLE_BATTSTAT)
CONFIGURE_ARGS+=	--disable-battstat
.endif
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

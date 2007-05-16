# $OpenBSD: Makefile,v 1.31 2007/05/16 22:18:38 jasper Exp $

COMMENT-main=		"applets for use with the GNOME panel"
COMMENT-battstat=	"GNOME applet for monitoring battery level"

VERSION=		2.18.0
DISTNAME=		gnome-applets-${VERSION}
PKGNAME-main=		gnome-applets2-${VERSION}
PKGNAME-battstat=	gnome-applets2-battstat-${VERSION}
SHARED_LIBS +=	gweather             0.0      # .0.0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-applets/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme->=2.15.91:x11/gnome/icon-theme \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-icon-theme->=2.15.91:x11/gnome/icon-theme
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

# Only i386 and macppc have the headers for the battstat applet
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "powerpc"
FLAVOR+=		no_battstat
.endif

MULTI_PACKAGES=		-main
.if ${FLAVOR:L:Mno_battstat}
CONFIGURE_ARGS+=	--disable-battstat
.else
MULTI_PACKAGES+=	-battstat
WANTLIB+=		Xau
.endif

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--disable-schemas-install
CONFIGURE_ARGS+=	--disable-scrollkeeper
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-applets2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB-main=		${WANTLIB} \
			XRes kvm xkbfile gnome-desktop-2 startup-notification-1 wnck-1

.if !${FLAVOR:L:Mno_battstat}
post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnome-applets2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/gnome-applets2/
.endif

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

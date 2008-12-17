# $OpenBSD: Makefile,v 1.34 2008/12/17 18:47:57 jasper Exp $

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
GNOME_VERSION=		2.24.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  gnome-desktop-2      5.8      # .5.16
SHARED_LIBS +=  gnome-desktop-2      6.0      # .9.4

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 bonobo-activation \
		bonoboui-2 cairo crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png popt ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		::textproc/rarian \
			::x11/gnome/py-gnome
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			startup-notification-1::devel/startup-notification

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnome-distributor="OpenBSD Ports" \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

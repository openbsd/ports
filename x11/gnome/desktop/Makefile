# $OpenBSD: Makefile,v 1.24 2007/07/05 22:50:10 jasper Exp $

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
GNOME_VERSION=		2.18.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  gnome-desktop-2      5.5      # .5.5
CATEGORIES=		x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo \
		crypto dbus-1 dbus-glib-1 esd expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:gnome-doc-utils->=0.3.2:x11/gnome/doc-utils
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnome-distributor="OpenBSD Ports" \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

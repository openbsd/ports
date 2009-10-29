# $OpenBSD: Makefile,v 1.52 2009/10/29 08:35:34 jasper Exp $

COMMENT=		components for the GNOME desktop

GNOME_PROJECT=		gnome-desktop
GNOME_VERSION=		2.28.1
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=  gnome-desktop-2      7.0      # .15.2

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-atom xcb-aux xcb-event z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::x11/gnome/py-gnome
LIB_DEPENDS=		startup-notification-1::devel/startup-notification

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnome-distributor="OpenBSD Ports" \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# stop systrace spam by avoiding xsltproc to access net
pre-configure:
	find ${WRKSRC}/desktop-docs/ -name Makefile.in \
		-exec perl -pi -e 's,xsltproc,xsltproc --nonet,g' {} \;

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"

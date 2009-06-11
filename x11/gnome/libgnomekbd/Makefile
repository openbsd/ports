# $OpenBSD: Makefile,v 1.16 2009/06/11 18:38:17 ajacoutot Exp $

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p5

SHARED_LIBS +=	gnomekbd             3.0      # .3.0
SHARED_LIBS +=	gnomekbdui           3.0      # .3.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png pthread xkbfile xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		glade-2.0.>=0.8::devel/libglade2 \
			xklavier.>=12.0::x11/gnome/libxklavier

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	libgnomekbd

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

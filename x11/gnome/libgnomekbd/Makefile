# $OpenBSD: Makefile,v 1.33 2011/05/14 21:29:04 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		keyboard configuration library

GNOME_PROJECT=		libgnomekbd
GNOME_VERSION=		2.32.0
REVISION=		2

SHARED_LIBS +=	gnomekbd             4.0      # .5.0
SHARED_LIBS +=	gnomekbdui           4.0      # .5.0

CATEGORIES=		devel

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm xkbfile xklavier xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

LIB_DEPENDS=		x11/gnome/libxklavier \
			x11/gtk+2

DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	libgnomekbd

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

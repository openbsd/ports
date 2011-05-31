# $OpenBSD: Makefile,v 1.2 2011/05/31 13:31:45 ajacoutot Exp $

COMMENT=		GTK desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		6.0.2

REVISION=		0

CATEGORIES=		math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

LIB_DEPENDS=		x11/gtk+3

BUILD_DEPENDS=		devel/bison
YACC=			bison

# needed to download IMF/ECB rates (Financial mode)
RUN_DEPENDS=		x11/gnome/gvfs

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gtk=3.0
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

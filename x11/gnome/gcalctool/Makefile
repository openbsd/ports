# $OpenBSD: Makefile,v 1.46 2011/06/01 15:19:09 ajacoutot Exp $

COMMENT=		GTK desktop calculator

GNOME_PROJECT=		gcalctool
GNOME_VERSION=		6.0.2

REVISION=		2

CATEGORIES=		math

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/dconf

BUILD_DEPENDS=		devel/bison
YACC=			bison

# needed to download IMF/ECB rates (Financial mode)
RUN_DEPENDS=		x11/gnome/gvfs

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=		gtk2
FLAVOR?=

.if ${FLAVOR:L:Mgtk2}
CONFIGURE_ARGS+=	--with-gtk=2.0
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += gdk-x11-2.0 gtk-x11-2.0
.else
CONFIGURE_ARGS+=	--with-gtk=3.0
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += cairo-gobject gdk-3 gtk-3
.endif

.include <bsd.port.mk>

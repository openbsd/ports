# $OpenBSD: Makefile,v 1.20 2011/09/29 08:56:13 jasper Exp $

COMMENT=	gtk-based git repository viewer
CATEGORIES=	devel x11
GNOME_VERSION=	0.5
GNOME_PROJECT=	giggle
REVISION=	7

SHARED_LIBS +=  giggle               0.0      # 0.0
SHARED_LIBS +=  giggle-git           0.0      # 0.0

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://live.gnome.org/giggle

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=	devel/gettext \
		x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtksourceview-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += vte xcb xcb-render xcb-shm xml2 z

RUN_DEPENDS=	devel/git
BUILD_DEPENDS+=	devel/git
LIB_DEPENDS=	devel/vte \
		x11/gtksourceview

MODGNOME_DESKTOP_FILE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--disable-evolution-data-server

.include <bsd.port.mk>

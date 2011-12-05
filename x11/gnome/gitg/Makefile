# $OpenBSD: Makefile,v 1.11 2011/12/05 12:33:31 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		git repository viewer for gtk+/GNOME

GNOME_PROJECT=		gitg
GNOME_VERSION=		0.2.5
REVISION=		2

SHARED_LIBS +=  gitg-1.0                  0.0 # 0.0

CATEGORIES=		devel

HOMEPAGE=		https://live.gnome.org/Gitg

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z ffi stdc++

LIBTOOL_FLAGS+= 	--tag=disable-static

LIB_DEPENDS=		x11/gtksourceview3>=3.2.0
BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/git \
			devel/gsettings-desktop-schemas

MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ARGS+=	--enable-compile-warnings=no

.include <bsd.port.mk>

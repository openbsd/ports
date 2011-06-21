# $OpenBSD: Makefile,v 1.2 2011/06/21 17:42:18 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		archive manager utility for GNOME
COMMENT-nautilus=	file-roller plugin for nautilus

GNOME_PROJECT=		file-roller
GNOME_VERSION=		3.0.2

PKGNAME-main=		${DISTNAME}
PKGNAME-nautilus=	nautilus-${DISTNAME}

REVISION-main=		0

CATEGORIES=		archivers

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += cairo-gobject drm expat fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MULTI_PACKAGES= 	-main -nautilus

WANTLIB-main=		${WANTLIB} c pthread
RUN_DEPENDS-main=	archivers/gcpio \
			archivers/gtar \
			archivers/p7zip \
			archivers/unrar \
			archivers/unzip \
			archivers/xz \
			archivers/zip \
			sysutils/cdrtools
LIB_DEPENDS-main=	x11/gtk+3

WANTLIB-nautilus=	${WANTLIB} nautilus-extension
LIB_DEPENDS-nautilus=	x11/gnome/nautilus
RUN_DEPENDS-nautilus=	x11/gnome/file-roller,-main

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-packagekit
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

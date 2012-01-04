# $OpenBSD: Makefile,v 1.79 2012/01/04 08:03:01 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		3.2.6

CATEGORIES=		editors

SHARED_LIBS +=  gedit-private             0.0 # 0.0

HOMEPAGE=		http://projects.gnome.org/gedit/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject drm enchant expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			devel/iso-codes
LIB_DEPENDS=		devel/libpeas>=1.1.4p1 \
			textproc/enchant \
			x11/gtksourceview3
RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS= 	goi yelp
MODGNOME_DESKTOP_FILE=	Yes
LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS=		--enable-python \
			--disable-updater \
			--enable-gvfs-metadata
USE_GROFF =		Yes

.include <bsd.port.mk>

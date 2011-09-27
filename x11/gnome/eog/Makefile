# $OpenBSD: Makefile,v 1.71 2011/09/27 07:37:12 jasper Exp $

# Don't forget to check eog-plugins when updating this port!

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.2.0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject croco-0.6 drm exempi exif expat
WANTLIB += ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 jpeg kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 xcb xcb-aux xcb-render xcb-shm xml2 z
WANTLIB += gnome-desktop-3 startup-notification-1 execinfo

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		devel/libpeas \
			devel/startup-notification \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/desktop
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			misc/shared-mime-info>=0.21 \
			x11/gnome/icon-theme>=3.0.0

MODGNOME_TOOLS= 	goi yelp
MODGNOME_DESKTOP_FILE=	Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-xmp \
			--with-libexif

.include <bsd.port.mk>

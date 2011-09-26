# $OpenBSD: Makefile,v 1.69 2011/09/26 07:38:30 ajacoutot Exp $

# Don't forget to check eog-plugins when updating this port!

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.0.2
EXTRACT_SUFX=		.tar.bz2

REVISION=		3

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject croco-0.6 dbus-1 dbus-glib-1 drm exempi
WANTLIB += exif expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 gthread-2.0 gtk-3 jpeg kvm lcms m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs rsvg-2 xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		devel/libpeas \
			devel/startup-notification \
			graphics/lcms \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/desktop
RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			misc/shared-mime-info>=0.21 \
			x11/gnome/icon-theme>=3.0.0

MODGNOME_TOOLS= 	goi yelp
MODGNOME_DESKTOP_FILE=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	--with-xmp \
			--with-libexif

.include <bsd.port.mk>

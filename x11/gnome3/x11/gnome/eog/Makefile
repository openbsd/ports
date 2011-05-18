# $OpenBSD: Makefile,v 1.2 2011/05/18 09:12:28 jasper Exp $

# Don't forget to check eog-plugins when updating this port!

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.0.1
REVISION=		0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo cairo-gobject croco-0.6 dbus-1 dbus-glib-1
WANTLIB += drm execinfo exempi exif expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gthread-2.0 gtk-3 jpeg
WANTLIB += lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs rsvg-2
WANTLIB += startup-notification-1 xcb xcb-atom xcb-aux xcb-event
WANTLIB += xcb-render xcb-shm xml2 z

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

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-xmp \
			--with-libexif \
			--enable-introspection

.include <bsd.port.mk>

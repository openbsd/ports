# $OpenBSD: Makefile,v 1.2 2011/05/18 09:06:28 ajacoutot Exp $

COMMENT=		plugins for EOG

GNOME_PROJECT=		eog-plugins
GNOME_VERSION=		3.0.0
REVISION=		0

CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/EyeOfGnome/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += drm exif expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 pixman-1 png pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

LIB_DEPENDS=    	devel/libpeas \
			graphics/libexif
BUILD_DEPENDS=		${RUN_DEPENDS}
# Depends on the same X.Y version of eog.
RUN_DEPENDS=		x11/gnome/eog>=3.0

# XXX: All plugins minus 'map' which requires libchamplain -> clutter
PLUGINS=		fit-to-width,exif-display,send-by-mail,postasa

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-python \
			--with-plugins=${PLUGINS}
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>

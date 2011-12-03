# $OpenBSD: Makefile,v 1.6 2011/12/03 22:17:15 ajacoutot Exp $

COMMENT=	color profile manager for GNOME

GNOME_PROJECT=	gnome-color-manager
GNOME_VERSION=	3.2.1
REVISION=	4

CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 colord drm exif
WANTLIB += exiv2 expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 jpeg lcms2 ltdl m ncurses ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ tiff vorbis vorbisfile vte2_90 xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libcanberra,-gtk3 \
		devel/vte3 \
		graphics/colord \
		graphics/exiv2 \
		graphics/libexif

RUN_DEPENDS=	graphics/argyll \
		graphics/shared-color-profiles,-extra \
		graphics/shared-color-targets

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=	yelp

CONFIGURE_ARGS=	--enable-exiv \
		--disable-packagekit

# XXX the --disable-man-pages switch exists but does nothing
CONFIGURE_ARGS += --disable-man-pages
CONFIGURE_ENV += ac_cv_path_DOCBOOK2MAN=no

# XXX needs a newer clutter
CONFIGURE_ARGS += --disable-clutter

pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure
	perl -pi -e 's,/usr/share,${LOCALBASE}/share,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/src/{gcm-calibrate.c,gcm-calibrate-argyll.c,gcm-picker.c,gcm-calibrate-main.c}

.include <bsd.port.mk>

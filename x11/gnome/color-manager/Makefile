# $OpenBSD: Makefile,v 1.16 2013/01/10 13:53:56 ajacoutot Exp $

COMMENT=	color profile manager for GNOME

GNOME_PROJECT=	gnome-color-manager
GNOME_VERSION=	3.6.1

CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += cairo-gobject canberra canberra-gtk3 clutter-1.0 clutter-gtk-1.0
WANTLIB += cogl cogl-pango colord drm exif exiv2 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gobject-2.0 gthread-2.0 gtk-3 jpeg
WANTLIB += json-glib-1.0 lcms2 ltdl m mash-0.2 ncurses ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ tiff util vorbis vorbisfile vte2_90
WANTLIB += xcb xcb-render xcb-shm z icudata icule icuuc xkbfile
WANTLIB += ICE SM atk-bridge-2.0 atspi colord-gtk dbus-1 harfbuzz

MODULES=	devel/gettext \
		x11/gnome
LIB_DEPENDS=	audio/libcanberra,-gtk3 \
		devel/vte3 \
		graphics/clutter/clutter-gtk>=1.3.2 \
		graphics/clutter/mash \
		graphics/colord-gtk>=0.1.23 \
		graphics/exiv2 \
		graphics/libexif \
		x11/gnome/desktop>=3.6.0

RUN_DEPENDS=	graphics/argyll \
		graphics/shared-color-profiles,-extra \
		graphics/shared-color-targets

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=	yelp

CONFIGURE_ARGS=	--disable-packagekit

# XXX the --disable-man-pages switch exists but does nothing
CONFIGURE_ARGS +=--disable-man-pages
CONFIGURE_ENV += ac_cv_path_DOCBOOK2MAN=no

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

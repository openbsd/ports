# $OpenBSD: Makefile,v 1.28 2013/10/14 10:56:19 ajacoutot Exp $

COMMENT=	color profile manager for GNOME

GNOME_PROJECT=	gnome-color-manager
GNOME_VERSION=	3.10.1

CATEGORIES=	graphics

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject canberra canberra-gtk3 clutter-1.0
WANTLIB += clutter-gtk-1.0 cogl cogl-pango colord colord-gtk colordprivate
WANTLIB += dbus-1 exif exiv2 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz jpeg
WANTLIB += json-glib-1.0 lcms2 ltdl m mash-0.2 ncurses ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs stdc++ tiff util vorbis vorbisfile vte2_90
WANTLIB += xcb xcb-render xcb-shm xkbfile z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	audio/libcanberra,-gtk3 \
		devel/vte3 \
		graphics/clutter/clutter-gtk \
		graphics/clutter/mash \
		graphics/colord-gtk \
		graphics/exiv2 \
		graphics/libexif \
		x11/gnome/desktop

RUN_DEPENDS=	graphics/argyll \
		graphics/shared-color-targets

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGNOME_TOOLS=	yelp

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

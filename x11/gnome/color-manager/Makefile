# $OpenBSD: Makefile,v 1.67 2019/07/07 11:20:50 ajacoutot Exp $

COMMENT=		color profile manager for GNOME

GNOME_PROJECT=		gnome-color-manager
GNOME_VERSION=		3.32.0

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} X11 atk-1.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 colord colord-gtk colordprivate
WANTLIB += exif exiv2 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls
WANTLIB += gobject-2.0 gtk-3 intl lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pcre2-8 tiff vte-2.91 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/vte3 \
			graphics/colord-gtk \
			graphics/exiv2 \
			graphics/libexif

RUN_DEPENDS=		graphics/argyll \
			graphics/shared-color-targets

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_ARGS=		-Denable-packagekit=false

pre-configure:
	sed -i -e 's,/usr/share,${LOCALBASE}/share,g' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/src/{gcm-calibrate.c,gcm-calibrate-argyll.c,gcm-picker.c,gcm-calibrate-main.c}

.include <bsd.port.mk>

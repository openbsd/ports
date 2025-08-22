COMMENT=	gtk+2 interface to libexif

V=		0.5.0
DISTNAME=	libexif-gtk-${V}

SHARED_LIBS +=  exif-gtk             1.0      # 6.0

CATEGORIES=	graphics

HOMEPAGE=	https://libexif.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += cairo exif expat ffi fontconfig freetype fribidi gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gtk-x11-2.0 harfbuzz iconv intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png xcb
WANTLIB += xcb-render xcb-shm z

SITES=		https://github.com/libexif/libexif-gtk/releases/download/v${V}/

LIB_DEPENDS=	x11/gtk+2 \
		graphics/libexif

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# checking how to link with libintl... /usr/local/lib/libintl.a ...
# (we want -lintl)
MAKE_FLAGS=	INTLLIBS='$$(LTLIBINTL)'

.include <bsd.port.mk>

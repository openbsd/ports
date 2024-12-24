COMMENT=	digital camera frontend

DISTNAME=	gtkam-1.1

CATEGORIES=	graphics

HOMEPAGE=	https://gphoto.sourceforge.net/proj/gtkam/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo exif exif-gtk expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port graphite2
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl jpeg ltdl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png xcb
WANTLIB += xcb-render xcb-shm z

SITES=		${SITE_SOURCEFORGE:=gphoto/}

RUN_DEPENDS=	devel/desktop-file-utils

LIB_DEPENDS=	graphics/libexif-gtk \
		graphics/libgphoto2 \
		x11/gtk+2

MODULES=	textproc/intltool

USE_GMAKE =	Yes

MAKE_FLAGS =	INTLLIBS='$$(LTLIBINTL)'

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"

# minimal: don't include any GNOME dependency
CONFIGURE_ARGS=	--with-gnome=no \
		--with-gimp=no \
		--with-bonobo=no \
		--disable-scrollkeeper

post-install:
	rm -r ${PREFIX}/share/omf

.include <bsd.port.mk>

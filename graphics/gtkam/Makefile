# $OpenBSD: Makefile,v 1.47 2019/07/12 20:47:00 sthen Exp $

COMMENT=	digital camera frontend

DISTNAME=	gtkam-1.0
REVISION=	3

CATEGORIES=	graphics

HOMEPAGE=	http://gphoto.sourceforge.net/proj/gtkam/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo exif exif-gtk expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gphoto2 gphoto2_port graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl ltdl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gphoto/}

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

.include <bsd.port.mk>

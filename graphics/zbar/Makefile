#	$OpenBSD: Makefile,v 1.20 2015/08/21 19:17:11 sthen Exp $

COMMENT=	ZBar barcode reader
DISTNAME=	zbar-0.10
REVISION=	12

SHARED_LIBS=	zbar	0.0 \
		zbargtk	0.0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zbar/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://zbar.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	devel/gettext \
		lang/python

WANTLIB += ICE MagickCore MagickWand SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xv atk-1.0 bz2 c cairo djvulibre
WANTLIB += expat ffi fftw3 fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jasper jbig jpeg ltdl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs tiff xcb xcb-render xcb-shm z
WANTLIB += Xt xml2 graphite2 harfbuzz webp
WANTLIB += lcms2 wmf-0.2 wmflite-0.2

LIB_DEPENDS=	graphics/ImageMagick \
		devel/libffi \
		x11/gtk+2

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/py-gtk2

USE_GROFF =	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-video --without-qt
USE_GMAKE=		Yes

.include <bsd.port.mk>

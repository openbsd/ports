#	$OpenBSD: Makefile,v 1.28 2019/07/12 20:47:12 sthen Exp $

COMMENT=	ZBar barcode reader
DISTNAME=	zbar-0.10
REVISION=	19

SHARED_LIBS=	zbar	0.0 \
		zbargtk	0.0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zbar/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://zbar.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xv
WANTLIB += atk-1.0 bz2 c cairo djvulibre expat ffi fftw3 fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl jbig jpeg lcms2 lzma m openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread tiff
WANTLIB += webp xcb xcb-render xcb-shm xml2 z

MODULES=	lang/python

LIB_DEPENDS=	graphics/ImageMagick \
		devel/libffi \
		x11/gtk+2

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	x11/py-gtk2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-video --without-qt
USE_GMAKE=		Yes

.include <bsd.port.mk>

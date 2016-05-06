#	$OpenBSD: Makefile,v 1.23 2016/05/06 21:39:03 sthen Exp $

COMMENT=	ZBar barcode reader
DISTNAME=	zbar-0.10
REVISION=	15

SHARED_LIBS=	zbar	0.0 \
		zbargtk	0.0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zbar/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://zbar.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xv atk-1.0 bz2 c cairo djvulibre expat ffi fftw3
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz jbig jpeg lcms2 lzma m openjp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs tiff webp xcb xcb-render
WANTLIB += xcb-shm xml2 z

MODULES=	devel/gettext \
		lang/python

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

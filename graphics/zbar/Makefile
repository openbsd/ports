#	$OpenBSD: Makefile,v 1.19 2015/03/20 22:47:41 naddy Exp $

COMMENT=	ZBar barcode reader
DISTNAME=	zbar-0.10
REVISION=	11

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

WANTLIB += GL ICE MagickCore MagickWand SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xv Xxf86vm atk-1.0 bz2 c cairo djvulibre drm
WANTLIB += expat ffi fftw3 fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 jasper jbig jpeg ltdl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs tiff xcb xcb-render xcb-shm z
WANTLIB += Xt stdc++ xml2
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

#	$OpenBSD: Makefile,v 1.2 2010/04/16 10:17:32 jasper Exp $

COMMENT=	ZBar barcode reader
DISTNAME=	zbar-0.10
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	zbar	0.0 \
		zbargtk	0.0

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=zbar/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://zbar.sourceforge.net/

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	devel/gettext \
		lang/python

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 bz2 c
WANTLIB += cairo expat fontconfig freetype gio-2.0 glib-2.0 glitz
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 jasper jbig jpeg
WANTLIB += lcms m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs tiff wmflite
WANTLIB += xcb xml2 z

LIB_DEPENDS=	MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
		ffi::devel/libffi \
		gdk-x11-2.0.>=0.11,gdk_pixbuf-2.0.>=0.11,gtk-x11-2.0.>=0.11::x11/gtk+2

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::x11/py-gtk2

USE_X11=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-video --without-qt
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.52 2020/05/14 19:16:25 rsadowski Exp $

COMMENT=	read and manipulate raw images from digital cameras

DISTNAME=	ufraw-0.22
REVISION=	6

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ufraw/}
HOMEPAGE=	http://ufraw.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 babl-0.1
WANTLIB += bz2 c cairo cfitsio exiv2 fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gegl-0.4 gimp-2.0 gimpbase-2.0 gimpcolor-2.0
WANTLIB += gimpconfig-2.0 gimpmath-2.0 gimpmodule-2.0 gimpui-2.0
WANTLIB += gimpwidgets-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkimageview harfbuzz intl
WANTLIB += jasper jpeg json-glib-1.0 lcms2 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png tiff z

# don't remove unless you are sure:
WANTLIB += lensfun

COMPILER=		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	devel/gettext,-tools

LIB_DEPENDS=	gimp->=2,<3:graphics/gimp/stable \
		graphics/lcms2 \
		archivers/bzip2 \
		graphics/exiv2 \
		math/cfitsio \
		graphics/gtkimageview \
		graphics/lensfun

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		CFITSIO_CFLAGS="-I${LOCALBASE}/include" \
		CFITSIO_LIBS="-lcfitsio"
CONFIGURE_ARGS=	--enable-extras

.include <bsd.port.mk>

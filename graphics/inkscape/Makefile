# $OpenBSD: Makefile,v 1.15 2010/10/05 08:57:47 armani Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.48.0
CATEGORIES=	graphics

MAINTAINER=	Benoit Chesneau <benoitc@metavers.net>

HOMEPAGE=	http://www.inkscape.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=inkscape/}

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender aspell atk-1.0 c cairo \
		cairomm-1.0 expat fontconfig freetype glib-2.0 glibmm-2.4 \
		glitz gmodule-2.0 gobject-2.0 gsl gslcblas gthread-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread \
		sigc-2.0 stdc++ xml2 z gio-2.0 giomm-2.4 \
		pthread-stubs xcb gc.>=3 popt MagickCore Magick++ \
		lcms png xslt poppler poppler-glib atkmm-1.6 gdkmm-2.4 \
		gtkmm-2.4 pangomm-1.4 gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 \
		gtkspell xcb-render xcb-render-util

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	::devel/boost
LIB_DEPENDS=	::devel/boehm-gc \
		::devel/gsl \
		::devel/pangomm \
		::devel/popt \
		::graphics/ImageMagick \
		::graphics/lcms \
		::graphics/png \
		::print/poppler \
		::textproc/aspell/core \
		::textproc/gtkspell \
		::textproc/libxslt \
		::x11/gtk2mm \
		::x11/gtk+2
RUN_DEPENDS=	::devel/desktop-file-utils \
		::textproc/py-lxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS=		--disable-silent-rules --without-gnome-vfs

CPPFLAGS=		-I${LOCALBASE}/include -I${X11BASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include/ImageMagick

CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>

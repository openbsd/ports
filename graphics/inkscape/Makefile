# $OpenBSD: Makefile,v 1.11 2009/08/10 06:31:45 kili Exp $

COMMENT=	SVG vector drawing application

DISTNAME=	inkscape-0.46
PKGNAME=	${DISTNAME}p9
CATEGORIES=	graphics

MAINTAINER=	Benoit Chesneau <benoitc@metavers.net>

HOMEPAGE=	http://www.inkscape.org/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=inkscape/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		cairomm-1.0 expat fontconfig freetype glib-2.0 glibmm-2.4 \
		glitz gmodule-2.0 gobject-2.0 gthread-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread \
		sigc-2.0 stdc++ xml2 z gio-2.0 giomm-2.4 \
		pthread-stubs xcb

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	::devel/boost

LIB_DEPENDS=	gc.>=3::devel/boehm-gc \
		popt::devel/popt \
		MagickCore,Magick++,MagickWand::graphics/ImageMagick \
		lcms::graphics/lcms \
		png::graphics/png \
		xslt::textproc/libxslt \
		poppler,poppler-glib::print/poppler \
		atkmm-1.6,gdkmm-2.4,gtkmm-2.4::x11/gtk2mm \
		pangomm-1.4::devel/pangomm \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		gtkspell::textproc/gtkspell

RUN_DEPENDS=	::devel/desktop-file-utils \
		::textproc/py-lxml

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE= 	autoconf gnu
AUTOCONF_VERSION=	2.61

CONFIGURE_ARGS=		--with-popt --mandir=${PREFIX}/man \
			--with-xft --without-gnome-print \
			--without-gnome-vfs --enable-lcms

CPPFLAGS=		-I${LOCALBASE}/include -I${X11BASE}/include \
			-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include/ImageMagick

CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS}" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt" \
			MSGFMT="${LOCALBASE}/bin/msgfmt"

.include <bsd.port.mk>

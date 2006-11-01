# $OpenBSD: Makefile,v 1.2 2006/11/01 03:00:13 mcbride Exp $
COMMENT=	'japanese handwriting input widget'

DISTNAME=	libtomoe-gtk-0.1.0

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	http://dl.sourceforge.jp/tomoe/17171/

CATEGORIES=	japanese inputmethods

SHARED_LIBS=	tomoe-gtk	0.0
MODULES=	converters/libiconv devel/gettext

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

BUILD_DEPENDS=	::devel/pkgconfig

LIB_DEPENDS=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
		tomoe::inputmethods/tomoe

WANTLIB=	Xrender Xext X11 m z png freetype fontconfig \
		gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		pangoft2-1.0 cairo glitz atk-1.0 gobject-2.0

.include <bsd.port.mk>

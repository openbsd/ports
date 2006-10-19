# $OpenBSD: Makefile,v 1.1.1.1 2006/10/19 00:53:12 espie Exp $
COMMENT=	'japanese handwriting'

DISTNAME=	uim-tomoe-gtk-0.2.0

HOMEPAGE= 	http://tomoe.sourceforge.jp/
MASTER_SITES=	http://dl.sourceforge.jp/tomoe/17172/

CATEGORIES=	japanese inputmethods

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ENV=CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

LIB_DEPENDS=	tomoe-gtk::inputmethods/libtomoe-gtk \
		uim::inputmethods/uim


WANTLIB=	Xrender Xext X11 m z png freetype fontconfig \
		gmodule-2.0 glib-2.0 pangocairo-1.0 pango-1.0 \
		pangoft2-1.0 cairo glitz atk-1.0 gobject-2.0 \
		gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 c intl iconv \
		tomoe

.include <bsd.port.mk>

COMMENT=	library to access the contents of an iPod

DISTNAME=	libgpod-0.8.0
REVISION=	13

SHARED_LIBS=	gpod	721.0	# 7.1

CATEGORIES=	audio

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}

HOMEPAGE=	http://www.gtkpod.org/libgpod/

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl lzma m pcre plist pthread sqlite3 usb-1.0
WANTLIB += xml2 z

USE_GMAKE=	Yes

MODULES=	textproc/intltool

LIB_DEPENDS=	databases/sqlite3 \
		devel/gettext,-runtime \
		devel/glib2 \
		devel/libplist \
		graphics/gdk-pixbuf2 \
		textproc/libxml \
		devel/libusb1

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-gdk-pixbuf \
		--without-hal \
		--without-libimobiledevice \
		--without-mono \
		--without-python \
		--without-python \
		--disable-pygobject \
		--localedir=${TRUEPREFIX}/share/locale

.include <bsd.port.mk>

COMMENT=	library to access the contents of an iPod

DISTNAME=	libgpod-0.8.3
REVISION=	0

SHARED_LIBS +=  gpod                 722.0    # 7.2

CATEGORIES=	audio

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=gtkpod/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.gtkpod.org/libgpod/

# LGPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += iconv intl jpeg lzma m pcre plist-2.0 png pthread sqlite3
WANTLIB += usb-1.0 xml2 z

USE_GMAKE=	Yes

MODULES=	textproc/intltool

LIB_DEPENDS=	databases/sqlite3 \
		devel/glib2 \
		devel/libplist \
		graphics/gdk-pixbuf2 \
		textproc/libxml \
		devel/libusb1

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS=	--without-hal \
		--without-libimobiledevice \
		--without-mono \
		--without-python \
		--disable-pygobject \
		--disable-udev

.include <bsd.port.mk>

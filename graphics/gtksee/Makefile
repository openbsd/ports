# $OpenBSD: Makefile,v 1.18 2006/02/04 20:25:46 steven Exp $

COMMENT=	"image viewer similar to ACDSee for Windows"

DISTNAME=	gtksee-0.5.0
CATEGORIES=	graphics

MASTER_SITES=	http://download.berlios.de/gtksee/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m z

LIB_DEPENDS=	gtk.1.2,gdk.1.2::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.2::graphics/png
RUN_DEPENDS=	:bzip-*:archivers/bzip \
		:bzip2-*:archivers/bzip2

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=--with-im-libs="${PREFIX}/lib" \
		--with-im-incs="${PREFIX}/include"

.include <bsd.port.mk>

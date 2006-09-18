# $OpenBSD: Makefile,v 1.2 2006/09/18 11:59:59 espie Exp $

COMMENT=	"PDF rendering library"

DISTNAME=	poppler-0.5.3
CATEGORIES=	print
SHARED_LIBS=	poppler 1.0 \
		poppler-glib 1.0

HOMEPAGE=	http://poppler.freedesktop.org/

# GPL
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --enable-xpdf-headers \
		--disable-poppler-qt \
		--disable-poppler-qt4 \
		--disable-utils \
		--enable-zlib
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 

WANTLIB=	Xrender png z freetype X11 fontconfig m Xext glitz \
		gmodule-2.0 cairo jpeg \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		gobject-2.0 glib-2.0

USE_LIBTOOL=	Yes
USE_X11=	Yes
USE_GMAKE=	Yes

.include <bsd.port.mk>

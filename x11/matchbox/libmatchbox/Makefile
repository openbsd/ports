# $OpenBSD: Makefile,v 1.2 2005/12/26 16:45:43 naddy Exp $

COMMENT=	"matchbox base library"
DISTNAME=	libmatchbox-1.7
SHARED_LIBS=	mb 1.7
MODGNU_SHARED_LIBS=	mb ''
CATEGORIES=	x11/matchbox
MASTER_SITES=	http://projects.o-hand.com/matchbox/sources/libmatchbox/1.7/

HOMEPAGE=	http://projects.o-hand.com/matchbox/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes
USE_X11=	Yes

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	pango-1.0.800.1,pangoft2-1.0.800.1,pangoxft-1.0.800.1::devel/pango \
		jpeg.62::graphics/jpeg \
		png.3::graphics/png
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender fontconfig freetype m z \
		glib-2.0.600.0 gmodule-2.0.600.0 gobject-2.0.600.0

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-jpeg \
		--enable-pango
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>

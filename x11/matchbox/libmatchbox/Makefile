# $OpenBSD: Makefile,v 1.8 2008/04/23 22:18:27 jasper Exp $

COMMENT=	matchbox base library
DISTNAME=	libmatchbox-1.8
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	mb 1.7
MODGNU_SHARED_LIBS=	mb ''

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=libmatchbox/1.8/}

USE_LIBTOOL=	Yes

LIB_DEPENDS=	pango-1.0.>=800.1,pangoft2-1.0.>=800.1,pangoxft-1.0.>=800.1::devel/pango \
		jpeg.>=62::graphics/jpeg \
		png.>=3::graphics/png
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 \
		Xau Xdmcp expat pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-jpeg \
		--enable-pango
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>

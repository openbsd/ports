# $OpenBSD: Makefile,v 1.10 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=	matchbox base library
DISTNAME=	libmatchbox-1.9
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=  mb                   1.7      # .1.7
MODGNU_SHARED_LIBS=	mb ''

MASTER_SITES=		${MASTER_SITES_MATCHBOX:=libmatchbox/1.9/}

WANTLIB=	X11 Xau Xdmcp Xext Xft Xrender expat fontconfig freetype \
		glib-2.0 gmodule-2.0 gobject-2.0 m pcre z pthread-stubs xcb

MODULES=		devel/gettext

LIB_DEPENDS=		pango-1.0,pangoft2-1.0,pangoxft-1.0::devel/pango \
			jpeg::graphics/jpeg \
			png::graphics/png

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-jpeg \
			--enable-pango
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>

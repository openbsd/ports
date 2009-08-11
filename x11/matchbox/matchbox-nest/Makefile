# $OpenBSD: Makefile,v 1.2 2009/08/11 08:42:08 ajacoutot Exp $
# XXX: Provide a Zaurus frontend

COMMENT=		graphical wrapper around Xnest(1) on PDA size
DISTNAME=		matchbox-nest-0.3
PKGNAME=		${DISTNAME}p0

MASTER_SITES=		${MASTER_SITES_MATCHBOX:=matchbox-nest/0.3/}

WANTLIB=	X11 Xau Xdmcp Xext Xft Xrender Xtst c expat fontconfig \
		freetype glib-2.0 gmodule-2.0 gobject-2.0 jpeg m pango-1.0 \
		pangoft2-1.0 pangoxft-1.0 png z pthread-stubs xcb

MODULES=		devel/gettext

LIB_DEPENDS=		mb::x11/matchbox/libmatchbox

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-I${LOCALBASE}/include/libpng -I${X11BASE}/include

.include <bsd.port.mk>

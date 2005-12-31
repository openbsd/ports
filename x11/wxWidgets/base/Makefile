# $OpenBSD: Makefile,v 1.3 2005/12/31 15:18:44 naddy Exp $

COMMENT=	"C++ cross-platform GUI toolkit - base (no GUI) version"
PKGNAME=	wxWidgets-base-${VERSION}p0
SHARED_LIBS=	wx_base 2.4

NO_REGRESS=	Yes

CONFIGURE_ARGS+=	--disable-gui
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_base_VERSION:R} \
			WX_REVISION=${LIBwx_base_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		m z 

.include <bsd.port.mk>

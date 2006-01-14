# $OpenBSD: Makefile,v 1.4 2006/01/14 11:46:16 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - base (no GUI) version"
PKGNAME=	wxWidgets-base-${VERSION}p1
SHARED_LIBS=	wx_base 3.0

NO_REGRESS=	Yes

CONFIGURE_ARGS+=	--disable-gui
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_base_VERSION:R} \
			WX_REVISION=${LIBwx_base_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		m z 

.include <bsd.port.mk>

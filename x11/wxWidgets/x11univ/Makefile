# $OpenBSD: Makefile,v 1.6 2006/01/14 11:46:16 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - x11univ version"
PKGNAME=		wxWidgets-x11univ-${VERSION}p3
SHARED_LIBS=		wx_x11univ 3.0

CONFIGURE_ARGS+=	--with-x11
CONFIGURE_ENV+=		WX_CURRENT=${LIBwx_x11univ_VERSION:R} \
			WX_REVISION=${LIBwx_x11univ_VERSION:E}
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xpm m z

.include <bsd.port.mk>

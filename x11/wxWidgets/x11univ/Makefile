# $OpenBSD: Makefile,v 1.3 2005/02/13 10:56:24 sturm Exp $

COMMENT=	"C++ cross-platform GUI toolkit - x11univ version"
PKGNAME=		wxWidgets-x11univ-${VERSION}p0

CONFIGURE_ARGS+=	--with-x11
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xpm m z

.include <bsd.port.mk>

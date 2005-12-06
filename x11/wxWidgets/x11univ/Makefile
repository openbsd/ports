# $OpenBSD: Makefile,v 1.4 2005/12/06 19:16:03 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - x11univ version"
PKGNAME=		wxWidgets-x11univ-${VERSION}p1

CONFIGURE_ARGS+=	--with-x11
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xpm m z

.include <bsd.port.mk>

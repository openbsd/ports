# $OpenBSD: Makefile,v 1.2 2004/12/18 21:12:42 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - x11univ version"
PKGNAME=		wxWidgets-x11univ-${VERSION}

CONFIGURE_ARGS+=	--with-x11
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xpm m z

.include <bsd.port.mk>

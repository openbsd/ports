# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $

COMMENT=	"C++ cross-platform GUI toolkit - base (no GUI) version"
PKGNAME=		wxWidgets-base-${VERSION}

NO_REGRESS=    Yes

CONFIGURE_ARGS+=	--disable-gui
RUN_DEPENDS+=		::x11/wxWidgets/headers

.include <bsd.port.mk>

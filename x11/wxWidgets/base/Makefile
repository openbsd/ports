# $OpenBSD: Makefile,v 1.2 2004/12/18 21:12:42 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - base (no GUI) version"
PKGNAME=		wxWidgets-base-${VERSION}

NO_REGRESS=    Yes

CONFIGURE_ARGS+=	--disable-gui
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		m z 

.include <bsd.port.mk>

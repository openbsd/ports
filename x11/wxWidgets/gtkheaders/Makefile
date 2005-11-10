# $OpenBSD: Makefile,v 1.1 2005/11/10 12:18:25 espie Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK headers"
PKGNAME=		wxWidgets-gtkheaders-${VERSION}

CONFIGURE_ARGS+=	--with-gtk

.if !defined(PACKAGING)
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
.endif

RUN_DEPENDS+=		::x11/wxWidgets/headers

NO_BUILD=Yes
INSTALL_TARGET=install_headers


.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.1.1.1 2004/07/16 21:01:36 todd Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}

CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers

.include <bsd.port.mk>

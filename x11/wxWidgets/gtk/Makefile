# $OpenBSD: Makefile,v 1.2 2004/12/18 21:12:42 alek Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}

CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

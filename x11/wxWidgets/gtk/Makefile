# $OpenBSD: Makefile,v 1.3 2005/02/13 10:56:23 sturm Exp $

COMMENT=	"C++ cross-platform GUI toolkit - GTK version"
PKGNAME=		wxWidgets-gtk-${VERSION}p0

CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS+=		gtk.1.2::x11/gtk+
RUN_DEPENDS+=		::x11/wxWidgets/headers

WANTLIB=		X11 Xext Xi gdk glib gmodule gthread intl m pthread z

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.25 2013/01/11 13:44:24 ajacoutot Exp $

COMMENT=	C++ bindings for libglade

GNOME_PROJECT=	libglademm
GNOME_VERSION=	2.6.7

REVISION=	4

SHARED_LIBS +=	glademm-2.4          1.7      # .1.5

CATEGORIES=	devel

HOMEPAGE=	http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB += m pixman-1 pthread-stubs stdc++ xcb xcb-render xcb-render-util
WANTLIB += z atk-1.0 atkmm-1.6 cairo cairomm-1.0 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4 glade-2.0 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 gtkmm-2.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre png sigc-2.0 xml2

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gtk2mm \
		devel/libglade2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.18 2010/09/30 12:53:00 ajacoutot Exp $

COMMENT-main=	C++ bindings for libglade
COMMENT-docs=	C++ bindings for libglade documentation

GNOME_PROJECT=	libglademm
GNOME_VERSION=	2.6.7
PKGNAME-main=	${DISTNAME}
PKGNAME-docs=	libglademm-docs-${GNOME_VERSION}

REVISION-main=	1
REVISION-docs=	0

SHARED_LIBS +=	glademm-2.4          1.7      # .1.5

CATEGORIES=	devel

HOMEPAGE=	http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -docs

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

WANTLIB-main += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB-main += m pixman-1 pthread-stubs stdc++ xcb xcb-render xcb-render-util
WANTLIB-main += z atk-1.0 atkmm-1.6 cairo cairomm-1.0 gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4 glade-2.0 glib-2.0
WANTLIB-main += glibmm-2.4 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-main += gtk-x11-2.0 gtkmm-2.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pangomm-1.4 pcre png sigc-2.0 xml2

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::x11/gtk2mm \
		::devel/libglade2

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

.include <bsd.port.mk>

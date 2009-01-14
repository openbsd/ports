# $OpenBSD: Makefile,v 1.15 2009/01/14 10:39:43 jasper Exp $

COMMENT-main=	C++ bindings for libglade
COMMENT-docs=	C++ bindings for libglade documentation

GNOME_PROJECT=	libglademm
GNOME_VERSION=	2.6.7
PKGNAME-main=	${DISTNAME}
PKGNAME-docs=	libglademm-docs-${GNOME_VERSION}
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

WANTLIB-main=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo cairomm-1.0 \
		expat fontconfig freetype gio-2.0 giomm-2.4 glib-2.0 \
		glibmm-2.4 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png sigc-2.0 \
		xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gtkmm-2.4.>=3,gdkmm-2.4.>=3,atkmm-1.6.>=3::x11/gtk2mm \
		pangomm-1.4::devel/pangomm \
		glade-2.0.>=0.9::devel/libglade2 \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.8:x11/gtk+2

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

.include <bsd.port.mk>

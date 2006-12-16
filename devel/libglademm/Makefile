# $OpenBSD: Makefile,v 1.3 2006/12/16 12:22:33 espie Exp $

COMMENT-main=	"C++ bindings for libglade"
COMMENT-docs=	"C++ bindings for libglade documentation"

V=		2.6.3
DISTNAME=	libglademm-${V}
PKGNAME-main=	${DISTNAME}p0
PKGNAME-docs=	libglademm-docs-${V}
SHARED_LIBS +=	glademm-2.4          1.5      # .1.5
CATEGORIES=	devel

HOMEPAGE=	http://gtkmm.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/libglademm/2.6/}

MULTI_PACKAGES=	-main -docs

PKG_ARCH-docs=	*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

WANTLIB-main=	X11 Xext Xrender fontconfig freetype m z glib-2.0 \
		gmodule-2.0 gobject-2.0 atk-1.0 cairo.>=4 png.>=5 \
		glibmm-2.4.>=3 glitz.>=1 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 sigc-2.0.>=1 xml2.>=9
MODULES=	devel/gettext
LIB_DEPENDS=	gtkmm-2.4.>=3,gdkmm-2.4.>=3,atkmm-1.6.>=3,pangomm-1.4.>=3::x11/gtk2mm \
		glade-2.0::devel/libglade2 \
		gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.8:x11/gtk+2

USE_X11=	Yes
USE_LIBTOOL=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-static

.include <bsd.port.mk>

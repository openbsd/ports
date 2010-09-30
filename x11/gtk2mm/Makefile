# $OpenBSD: Makefile,v 1.37 2010/09/30 12:56:41 ajacoutot Exp $

COMMENT-main=		C++ interface for gtk2+
COMMENT-docs=		C++ interface for gtk2+ documentation

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		2.22.0

PKGNAME-main=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}

CATEGORIES=		devel x11

SHARED_LIBS +=		gdkmm-2.4	10.0 # .2.0
SHARED_LIBS +=		gtkmm-2.4	10.0 # .2.0

HOMEPAGE=		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB-main += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-main += Xi Xinerama Xrandr Xrender expat fontconfig freetype
WANTLIB-main += m pixman-1 pthread-stubs stdc++ xcb xcb-render
WANTLIB-main += xcb-render-util z gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 
WANTLIB-main += giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0
WANTLIB-main += gobject-2.0 gthread-2.0 gtk-x11-2.0 pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre png
WANTLIB-main += sigc-2.0 atk-1.0 cairo cairomm-1.0 atkmm-1.6

MULTI_PACKAGES=		-main -docs

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		::devel/atk2mm \
			::devel/glib2mm \
			::devel/pangomm \
			::x11/gtk+2 \
			::graphics/cairomm

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent

USE_GMAKE=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-dependency-tracking

.include <bsd.port.mk>

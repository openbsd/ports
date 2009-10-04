# $OpenBSD: Makefile,v 1.32 2009/10/04 18:19:57 ajacoutot Exp $

COMMENT-main=		C++ interface for gtk2+
COMMENT-docs=		C++ interface for gtk2+ documentation

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		2.18.2

PKGNAME-main=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}

CATEGORIES=		devel x11

SHARED_LIBS +=		atkmm-1.6	9.0 # .2.0
SHARED_LIBS +=		gdkmm-2.4	9.0 # .2.0
SHARED_LIBS +=		gtkmm-2.4	9.0 # .2.0

HOMEPAGE=		http://www.gtkmm.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -docs

WANTLIB-main=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xcomposite Xdamage Xrender atk-1.0 cairo expat \
			fontconfig freetype pcre pixman-1 gio-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png sigc-2.0 z \
			pthread-stubs xcb

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		giomm-2.4,glibmm-2.4:glib2mm->=2.18.1:devel/glib2mm \
			pangomm-1.4::devel/pangomm \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.14:x11/gtk+2 \
			cairomm-1.0::graphics/cairomm

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent

USE_GMAKE=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		MAKE=${MAKE_PROGRAM}
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-dependency-tracking

.include <bsd.port.mk>

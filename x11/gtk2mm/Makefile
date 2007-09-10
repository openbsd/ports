# $OpenBSD: Makefile,v 1.18 2007/09/10 18:19:47 jasper Exp $

COMMENT-main=		C++ interface for gtk2+
COMMENT-docs=		C++ interface for gtk2+ documentation

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		2.10.11
PKGNAME-main=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}
CATEGORIES=		devel x11

SHARED_LIBS=		atkmm-1.6	5.2 \
			gdkmm-2.4	5.2 \
			gtkmm-2.4	5.2 \
			pangomm-1.4	5.2

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -docs

WANTLIB-main=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender atk-1.0 cairo expat fontconfig freetype \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png sigc-2.0 z
MODULES=		devel/gettext \
			x11/gnome
LIB_DEPENDS=		glibmm-2.4:glib2mm->=2.12:devel/glib2mm \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.8:x11/gtk+2 \
			cairomm-1.0::graphics/cairomm

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-dependency-tracking

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.28 2009/07/17 07:35:56 ajacoutot Exp $

COMMENT-main=		C++ interface for gtk2+
COMMENT-docs=		C++ interface for gtk2+ documentation

GNOME_PROJECT=		gtkmm
GNOME_VERSION=		2.14.4
PKGNAME-main=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}
CATEGORIES=		devel x11

SHARED_LIBS=		atkmm-1.6	7.0 \
			gdkmm-2.4	7.0 \
			gtkmm-2.4	7.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -docs

WANTLIB-main=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xcomposite Xdamage Xrender atk-1.0 c cairo expat \
			fontconfig freetype pcre pixman-1 gio-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png sigc-2.0 stdc++ z
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
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--disable-dependency-tracking

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>

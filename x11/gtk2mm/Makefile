# $OpenBSD: Makefile,v 1.16 2007/04/25 10:40:44 wilfried Exp $

COMMENT-main=		"C++ interface for gtk2+"
COMMENT-docs=		"C++ interface for gtk2+ documentation"

VERSION=		2.10.9
DISTNAME=		gtkmm-${VERSION}
PKGNAME-main=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}
CATEGORIES=		devel x11

SHARED_LIBS=		atkmm-1.6	5.0 \
			gdkmm-2.4	5.0 \
			gtkmm-2.4	5.0 \
			pangomm-1.4	5.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkmm/2.10/}

MULTI_PACKAGES=		-main -docs

WANTLIB-main=		X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
			Xrender atk-1.0 cairo expat fontconfig freetype \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 png sigc-2.0 z
MODULES=		devel/gettext
LIB_DEPENDS=		glibmm-2.4:glib2mm->=2.12:devel/glib2mm \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.8:x11/gtk+2 \
			cairomm-1.0::graphics/cairomm
LIB_DEPENDS+=		expat.>=6::textproc/expat # temp

PKG_ARCH-docs=		*
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--disable-dependency-tracking

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>

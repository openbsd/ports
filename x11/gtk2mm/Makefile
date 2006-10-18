# $OpenBSD: Makefile,v 1.12 2006/10/18 21:18:30 wilfried Exp $

COMMENT=		"C++ interface for gtk2+"
COMMENT-docs=		"C++ interface for gtk2+ documentation"

VERSION=		2.8.9
DISTNAME=		gtkmm-${VERSION}
PKGNAME=		gtk2mm-${VERSION}
PKGNAME-docs=		gtk2mm-docs-${VERSION}
CATEGORIES=		devel x11

SHARED_LIBS=		atkmm-1.6	4.0 \
			gdkmm-2.4	4.0 \
			gtkmm-2.4	4.0 \
			pangomm-1.4	4.0

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkmm/2.8/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=	*
.else
WANTLIB=		X11 Xext Xrender atk-1.0 fontconfig freetype \
			glib-2.0 gmodule-2.0 gobject-2.0 m z \
			pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 sigc-2.0 cairo glitz png
MODULES=		devel/gettext
LIB_DEPENDS=		glibmm-2.4:glib2mm->=2.8:devel/glib2mm \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0:gtk+2->=2.8:x11/gtk+2
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

.include <bsd.port.mk>

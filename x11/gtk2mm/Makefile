# $OpenBSD: Makefile,v 1.5 2005/11/15 09:21:52 wilfried Exp $

COMMENT=		"C++ interface for gtk2+"
COMMENT-docs=		"C++ interface for gtk2+ documentation"

VERSION=		2.6.4
DISTNAME=		gtkmm-${VERSION}
PKGNAME=		gtk2mm-${VERSION}p3
PKGNAME-docs=		gtk2mm-docs-${VERSION}
CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtkmm.org/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkmm/2.6/}

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=	*
.else
WANTLIB=		X11 Xext Xrender atk-1.0.0.0 cairo fontconfig freetype \
			glib-2.0.0.0 glitz gmodule-2.0.0.0 gobject-2.0.0.0 m \
			pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 png \
			sigc-2.0.0.0 z
MODULES=		gettext
LIB_DEPENDS=		glibmm-2.4.0.0:glib2mm->=2.4:devel/glib2mm \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0:gtk+2->=2.4:x11/gtk+2
.endif

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static

MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/scripts

V=			2.6
SUBST_VARS=		V

.include <bsd.port.mk>

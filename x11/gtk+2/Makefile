# $OpenBSD: Makefile,v 1.30 2006/01/03 07:33:36 marcm Exp $

NOT_FOR_ARCHS=			${NO_SHARED_ARCHS}

COMMENT=			"multi-platform graphical toolkit"
COMMENT-docs=           	"gtk+-2 documentation"

VERSION=			2.8.9
DISTNAME=			gtk+-${VERSION}
PKGNAME=			gtk+2-${VERSION}
PKGNAME-docs=			gtk+2-docs-${VERSION}
CATEGORIES=			x11 devel

HOMEPAGE=			http://www.gtk.org
MAINTAINER=			Marc Matteo <marcm@openbsd.org>

SHARED_LIBS=			gdk-x11-2.0		800.9 \
				gdk_pixbuf-2.0		800.9 \
				gdk_pixbuf_xlib-2.0	800.9 \
				gtk-x11-2.0		800.9

# LGPL
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			ftp://ftp.gtk.org/pub/gtk/v2.8/ \
				${MASTER_SITE_GNOME:=sources/gtk+/2.8/}
EXTRACT_SUFX=           	.tar.bz2

MULTI_PACKAGES=         	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
WANTLIB=			X11 Xcursor Xext Xfixes Xinerama Xrender \
				Xrandr c cairo fontconfig freetype glitz m z
MODULES=			devel/gettext

LIB_DEPENDS=			glib-2.0.800.0,gmodule-2.0.800.0,gobject-2.0.800.0::devel/glib2 \
				pango-1.0.1000.0,pangoft2-1.0.1000.0,pangocairo-1.0.1000.0::devel/pango \
				atk-1.0.0.1::devel/atk \
				tiff.35::graphics/tiff \
				png.3::graphics/png \
				jpeg.62::graphics/jpeg
BUILD_DEPENDS=          	:pkgconfig-*:devel/pkgconfig
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=			*
.endif

USE_X11=			Yes
USE_GMAKE=			Yes
USE_LIBTOOL=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS+= 		--disable-gtk-doc
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib" \
				PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

.include <bsd.port.mk>

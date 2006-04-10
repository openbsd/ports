# $OpenBSD: Makefile,v 1.34 2006/04/10 20:04:23 naddy Exp $

NOT_FOR_ARCHS=			${NO_SHARED_ARCHS}

COMMENT=			"multi-platform graphical toolkit"
COMMENT-docs=           	"gtk+-2 documentation"

VERSION=			2.6.10
DISTNAME=			gtk+-${VERSION}
PKGNAME=			gtk+2-${VERSION}p2
PKGNAME-docs=			gtk+2-docs-${VERSION}p0
CATEGORIES=			x11 devel

HOMEPAGE=			http://www.gtk.org
MAINTAINER=			Marc Matteo <marcm@openbsd.org>

SHARED_LIBS=			gdk-x11-2.0		801.0 \
				gdk_pixbuf-2.0		801.0 \
				gdk_pixbuf_xlib-2.0	801.0 \
				gtk-x11-2.0		801.0

# LGPL
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			ftp://ftp.gtk.org/pub/gtk/v2.6/ \
				${MASTER_SITE_GNOME:=sources/gtk+/2.6/}
EXTRACT_SUFX=           	.tar.bz2

MULTI_PACKAGES=         	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
WANTLIB=			X11 Xcursor Xext Xfixes Xft Xinerama Xrender \
				c fontconfig freetype m z
MODULES=			devel/gettext

LIB_DEPENDS=			glib-2.0.800.0,gmodule-2.0.800.0,gobject-2.0.800.0::devel/glib2 \
				pango-1.0.1000.0,pangoft2-1.0.1000.0,pangoxft-1.0.1001.0,pangox-1.0.1001.0::devel/pango \
				atk-1.0.0.1::devel/atk \
				tiff.35::graphics/tiff \
				png.3::graphics/png \
				jpeg.62::graphics/jpeg
BUILD_DEPENDS=          	:pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=			::x11/hicolor-icon-theme
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

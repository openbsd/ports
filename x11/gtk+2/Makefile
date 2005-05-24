# $OpenBSD: Makefile,v 1.22 2005/05/24 21:29:11 marcm Exp $

NOT_FOR_ARCHS=			${NO_SHARED_ARCHS}

COMMENT=			"multi-platform graphical toolkit"
COMMENT-docs=           	"gtk+-2 documentation"

VERSION=			2.6.7
DISTNAME=			gtk+-${VERSION}
PKGNAME=			gtk+2-${VERSION}
PKGNAME-docs=			gtk+2-docs-${VERSION}
CATEGORIES=			x11 devel

HOMEPAGE=			http://www.gtk.org
MAINTAINER=			Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			ftp://ftp.gtk.org/pub/gtk/v2.6/
EXTRACT_SUFX=           	.tar.bz2

MULTI_PACKAGES=         	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
WANTLIB=			X11 Xcursor Xext Xfixes Xft Xinerama Xrender c fontconfig freetype m z
MODULES=			devel/gettext

LIB_DEPENDS=			glib-2.0.600.0,gmodule-2.0.600.0,gobject-2.0.600.0::devel/glib2 \
				pango-1.0.800.1,pangoft2-1.0.800.1,pangox-1.0.800.1,pangoxft-1.0.800.1::devel/pango \
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

# $OpenBSD: Makefile,v 1.4 2002/12/23 04:59:47 marcm Exp $

COMMENT=			"multi-platform graphical toolkit"
COMMENT-docs=           	"gtk+-2 documentation"

VERSION=			2.0.9
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

MASTER_SITES=			ftp://ftp.gtk.org/pub/gtk/v2.0/
EXTRACT_SUFX=           	.tar.bz2

MULTI_PACKAGES=         	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=			glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
				pango-1.0.0.0,pangox-1.0.0.0,pangoxft-1.0.0.0::devel/pango \
				atk-1.0.0.0::devel/atk \
				tiff.35::graphics/tiff \
				png.3::graphics/png \
				jpeg.62::graphics/tiff
BUILD_DEPENDS=          	:pkgconfig-*:devel/pkgconfig
.endif

# library versions (major:minor)
LIBGDK_X11_VERSION=		0:9
LIBGDK_PIXBUF_VERSION=		0:9
LIBGDK_PIXBUF_XLIB_VERSION=	0:9
LIBGTK_X11_VERSION=		0:9

USE_X11=			Yes
USE_GMAKE=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS+=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 		--enable-static
CONFIGURE_ARGS+= 		--disable-gtk-doc
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=			LIBGDK_X11_VERSION="${LIBGDK_X11_VERSION}" \
				LIBGDK_PIXBUF_VERSION="${LIBGDK_PIXBUF_VERSION}" \
				LIBGDK_PIXBUF_XLIB_VERSION="${LIBGDK_PIXBUF_XLIB_VERSION}" \
				LIBGTK_X11_VERSION="${LIBGTK_X11_VERSION}"

NO_REGRESS=			Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtk+2/gtk-2.0; \
	${INSTALL_DATA} ${WRKSRC}/modules/input/gtk.immodules ${PREFIX}/share/examples/gtk+2/gtk-2.0/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.11 2003/09/23 06:12:41 marcm Exp $

NOT_FOR_ARCHS=			${NO_SHARED_ARCHS}

COMMENT=			"multi-platform graphical toolkit"
COMMENT-docs=           	"gtk+-2 documentation"

VERSION=			2.2.4
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

MASTER_SITES=			ftp://ftp.gtk.org/pub/gtk/v2.2/
EXTRACT_SUFX=           	.tar.bz2

MULTI_PACKAGES=         	-docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=			glib-2.0.0.8,gmodule-2.0.0.8,gobject-2.0.0.8::devel/glib2 \
				pango-1.0.0.1,pangox-1.0.0.1,pangoxft-1.0.0.1::devel/pango \
				atk-1.0.0.1::devel/atk \
				tiff.35::graphics/tiff \
				png.3::graphics/png \
				jpeg.62::graphics/jpeg
BUILD_DEPENDS=          	:pkgconfig-*:devel/pkgconfig
.endif

# library versions (major:minor)
OBSD_LIB_VERSION=		0:14

USE_X11=			Yes
USE_GMAKE=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS+= 		--disable-gtk-doc
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib"
MAKE_ENV=			OBSD_LIB_VERSION="${OBSD_LIB_VERSION}"

NO_SYSTRACE=			"normalize_filename: filename too long"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtk+2/; \
	src=`cd ${WRKSRC} && pwd -P`; \
	sed s,$$src/modules/input,${LOCALBASE}/lib/gtk-2.0/2.2.0/immodules, ${WRKSRC}/modules/input/gtk.immodules > ${PREFIX}/share/examples/gtk+2/gtk.immodules; \
	sed s,$$src/gdk-pixbuf,${LOCALBASE}/lib/gtk-2.0/2.2.0/loaders, ${WRKSRC}/gdk-pixbuf/gdk-pixbuf.loaders > ${PREFIX}/share/examples/gtk+2/gdk-pixbuf.loaders

.include <bsd.port.mk>

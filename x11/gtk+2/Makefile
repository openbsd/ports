# $OpenBSD: Makefile,v 1.1.1.1 2002/07/25 09:42:35 nino Exp $

COMMENT=		"multi-platform graphical toolkit"
COMMENT-docs=           "gtk+-2 documentation"

VERSION=		2.0.5
DISTNAME=		gtk+-${VERSION}
PKGNAME=		gtk+2-${VERSION}
PKGNAME-docs=		gtk+2-docs-${VERSION}
CATEGORIES=		x11 devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Nils Nordman <nino@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.0/
EXTRACT_SUFX=           .tar.bz2

MULTI_PACKAGES=         -docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
LIB_DEPENDS=		glib-2.0.=0,gmodule-2.0.=0,gobject-2.0.=0::devel/glib2 \
			pango-1.0.=0,pangox-1.0.=0,pangoxft-1.0.=0::devel/pango \
			atk-1.0.=0::devel/atk \
			tiff.35::graphics/tiff \
			png.3::graphics/png \
			jpeg.62::graphics/tiff
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig
RUN_DEPENDS=		${BUILD_DEPENDS}
.endif

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=		Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gtk+2/gtk-2.0; \
	${INSTALL_DATA} ${WRKSRC}/modules/input/gtk.immodules ${PREFIX}/share/examples/gtk+2/gtk-2.0/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.41 2002/04/26 14:55:21 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

COMMENT=	"image manipulation library for X11"

DISTNAME=	imlib-1.9.11
CATEGORIES=	graphics devel
NEED_VERSION=	1.522
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/imlib

MODULES=	gettext
LIB_DEPENDS= 	gtk.1.2,gdk.1.2::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		ungif.5::graphics/libungif \
		png.2::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	::graphics/jpeg
RUN_DEPENDS=	::graphics/jpeg

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-modules
CONFIGURE_ENV=	ac_cv_path_CONVERT_PROG="${LOCALBASE}/bin/convert" \
		ac_cv_path_GIFTOPNM_PROG="${LOCALBASE}/bin/giftopnm" \
		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

VMEM_WARNING=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${PREFIX}/share/aclocal
	@cd ${PREFIX}/share/examples/imlib && mv imrc imrc-sample

.include <bsd.port.mk>

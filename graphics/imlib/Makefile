# $OpenBSD: Makefile,v 1.22 2000/08/12 08:17:55 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.8.1
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/imlib

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		gif.4.1::graphics/giflib \
		jpeg.62::graphics/jpeg \
		png.1::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	convert::graphics/ImageMagick
RUN_DEPENDS=	convert::graphics/ImageMagick

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${PREFIX}/share/aclocal
	cd ${PREFIX}/share/examples/imlib && mv imrc imrc-sample

.include <bsd.port.mk>

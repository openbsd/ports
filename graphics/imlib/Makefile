# $OpenBSD: Makefile,v 1.19 2000/06/15 19:08:11 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.8
CATEGORIES=	graphics
NEED_VERSION=	1.301
MASTER_SITES=	ftp://beaver.its.vu.edu.au/pub/enlightenment/enlightenment/libs/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/imlib/ \
		ftp://ftp.squish.org/pub/enlightenment/imlib/

LIB_DEPENDS=	intl::devel/gettext \
		gtk.1.2::x11/gtk+ \
		gif.4.1::graphics/giflib \
		jpeg.62::graphics/jpeg \
		png.1.6::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	convert::graphics/ImageMagick \
		giftopnm::graphics/netpbm
RUN_DEPENDS=	convert::graphics/ImageMagick \
		giftopnm::graphics/netpbm

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
	${INSTALL_DATA_DIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${LOCALBASE}/share/aclocal

.include <bsd.port.mk>

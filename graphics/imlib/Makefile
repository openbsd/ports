# $OpenBSD: Makefile,v 1.17 2000/03/24 23:28:10 espie Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.8
CATEGORIES=	graphics
NEED_VERSION=	 1.230
MASTER_SITES=	ftp://beaver.its.vu.edu.au/pub/enlightenment/enlightenment/libs/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/imlib/ \
		ftp://ftp.squish.org/pub/enlightenment/imlib/


MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	intl::devel/gettext \
		gtk.1.2::x11/gtk+ \
		gif.4.1::graphics/giflib \
		jpeg.62::graphics/jpeg \
		png.1.3::graphics/png \
		tiff.35::graphics/tiff
BUILD_DEPENDS=	convert::graphics/ImageMagick \
		giftopnm::graphics/netpbm
RUN_DEPENDS=	convert::graphics/ImageMagick \
		giftopnm::graphics/netpbm

USE_GMAKE=	Yes
USE_X11=	Yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	Yes
FAKE=		Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${LOCALBASE}/bin/gtk-config"

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
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${LOCALBASE}/share/aclocal/

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.6 2000/03/08 03:47:40 kevlo Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdelibs-1.1.2
CATEGORIES=	x11
NEED_VERSION=	1.223
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
DIST_SUBDIR=	kde

NEED_VERSION=	1.92

BUILD_DEPENDS=	msgfmt:devel/gettext
LIB_DEPENDS=	qt.1.45:x11/qt \
		gif.4.1:graphics/giflib \
		jpeg.62:graphics/jpeg \
		png.1.3:graphics/png \
		tiff.35:graphics/tiff

USE_BZIP2=	Yes
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>

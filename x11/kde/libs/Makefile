# $OpenBSD: Makefile,v 1.2 1999/09/16 01:15:01 brad Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdelibs-1.1.2
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
DIST_SUBDIR=	kde

NEED_VERSION=	1.92

BUILD_DEPENDS=	msgfmt:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	qt.1.44:${PORTSDIR}/x11/qt \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.3.4:${PORTSDIR}/graphics/tiff34

USE_EGCC=	yes
USE_EGXX=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
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

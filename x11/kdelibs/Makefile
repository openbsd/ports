# $OpenBSD: Makefile,v 1.9 1999/11/09 04:52:13 brad Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdelibs-1.1.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.1/distribution/tar/generic/source/bz2

NEED_VERSION=	1.92

BUILD_DEPENDS=	msgfmt:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	qt.1.44:${PORTSDIR}/x11/qt \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.35:${PORTSDIR}/graphics/tiff

MAINTAINER=	brad@openbsd.org

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

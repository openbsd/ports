# $OpenBSD: Makefile,v 1.13 2000/06/01 10:27:39 kevlo Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdelibs-1.1.2
CATEGORIES=	x11
NEED_VERSION=	1.234
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
DIST_SUBDIR=	kde

BUILD_DEPENDS=	msgfmt::devel/gettext
LIB_DEPENDS=	qt.1.45::x11/qt \
		gif.4.1::graphics/giflib \
		jpeg.62::graphics/jpeg \
		png.1.6::graphics/png \
		tiff.35::graphics/tiff

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=	Yes

USE_BZIP2=	Yes
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --with-qt-includes="${LOCALBASE}/include/X11/qt" \
		 --with-qt-libraries="${LOCALBASE}/lib"

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>

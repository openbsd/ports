# $OpenBSD: Makefile,v 1.11 2000/09/12 16:15:45 brad Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdebase-1.1.2
CATEGORIES=	x11
NEED_VERSION=	1.328
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2
EXTRACT_SUFX=	.tar.bz2
DIST_SUBDIR=	kde

HOMEPAGE=	http://www.kde.org/

BUILD_DEPENDS=	msgfmt::devel/gettext
LIB_DEPENDS=	qt.1.45::x11/qt \
		MesaGL.3::graphics/Mesa \
		jpeg.62::graphics/jpeg \
		gif.4.1::graphics/giflib \
		kdecore.1::x11/kde/libs

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu dest
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --with-qt-includes="${LOCALBASE}/include/X11/qt" \
		 --with-qt-libraries="${LOCALBASE}/lib"
CONFIGURE_ENV=	RUN_KAPPFINDER=no KDEDIR=/usr/local

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted" 
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>

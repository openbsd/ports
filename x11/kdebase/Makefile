# $OpenBSD: Makefile,v 1.6 1999/06/20 16:14:26 espie Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdebase-1.1.1
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.1/distribution/tar/generic/source/bz2

NEED_VERSION=	1.92

BUILD_DEPENDS=	msgfmt:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	qt.1.44:${PORTSDIR}/x11/qt \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		kdecore.1:${PORTSDIR}/x11/kdelibs

USE_EGCC=	yes
USE_EGXX=	yes
USE_BZIP2=	yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted" 
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

.include <bsd.port.mk>

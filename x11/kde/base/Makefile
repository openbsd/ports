# $OpenBSD: Makefile,v 1.2 2000/03/24 23:28:40 espie Exp $
# Original Author: Yanick Cote <yanick@fries.net>

DISTNAME=	kdebase-1.1.2
CATEGORIES=	x11
NEED_VERSION=	 1.230
MASTER_SITES=	${MASTER_SITE_KDE}
MASTER_SITE_SUBDIR= stable/1.1.2/distribution/tar/generic/source/bz2

BUILD_DEPENDS=	msgfmt::devel/gettext
LIB_DEPENDS=	qt.1.45::x11/qt \
		jpeg.62::graphics/jpeg \
		gif.4.1::graphics/giflib \
		kdecore.1::x11/kdelibs

MAINTAINER=	brad@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_BZIP2=	Yes
USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted" 
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

KSS= kattraction.kss kbanner.kss kbat.kss kblankscrn.kss kblob.kss \
kbouboule.kss kbsod.kss kflame.kss kforest.kss khop.kss klaser.kss \
klines.kss klissie.kss kmorph3d.kss kpipes.kss kpolygon.kss kpyro.kss \
krock.kss kscience.kss kslidescreen.kss kslip.kss kspace.kss kswarm.kss

post-install:
	@cd ${PREFIX}/bin && chmod u+s ${KSS}

.include <bsd.port.mk>

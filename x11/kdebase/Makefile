# $OpenBSD: Makefile,v 1.9 1999/11/09 04:58:34 brad Exp $
# Original Author: Yanick Cote <yanick@fries.net>

BROKEN=		bad packing lists, share/apps/kdisknav/CD-ROM.kdelnk

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

MAINTAINER=	brad@openbsd.org

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

KSS= kattraction.kss kbanner.kss kbat.kss kblankscrn.kss kblob.kss \
kbouboule.kss kbsod.kss kflame.kss kforest.kss khop.kss klaser.kss \
klines.kss klissie.kss kmorph3d.kss kpipes.kss kpolygon.kss kpyro.kss \
krock.kss kscience.kss kslidescreen.kss kslip.kss kspace.kss kswarm.kss

post-install:
	@cd ${PREFIX}/bin && chmod u+s ${KSS}

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.15 2003/01/27 21:55:29 espie Exp $
V=0.9.5
CATEGORIES=		x11 x11/kde
COMMENT=	"KDE style engine"

BROKEN=	"Awaiting kde 3.1 update"
HOMEPAGE=	http://www.mosfet.org/liquid.html
MASTER_SITES=	http://www.mosfet.org/
DISTNAME=	mosfet-liquid$V
PKGNAME=	mosfet-liquid-$V
DIST_SUBDIR=	
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS=	::devel/autoconf ::devel/automake

VERSION=3
PATCH_LIST=	patch-*

LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		kdecore.4::x11/kde/libs3 \
		kwin::x11/kde/base3

# QPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	"Not without the source"


#CONFIGURE_STYLE=	gnu
#
#CONFIGURE_ENV=		UIC_NOT_NEEDED=true
#
#pre-configure:
#	cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs

.include <bsd.port.mk>

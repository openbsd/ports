# $OpenBSD: Makefile,v 1.11 2002/04/10 01:24:39 espie Exp $
V=0.7
CATEGORIES=		x11 x11/kde
NEED_VERSION=		1.483
COMMENT=	"KDE style engine"

HOMEPAGE=	http://www.mosfet.org/liquid.html
MASTER_SITES=	http://www.mosfet.org/
DISTNAME=	mosfet-liquid$V
PKGNAME=	mosfet-liquid-$V
DIST_SUBDIR=	
EXTRACT_SUFX=	.tar.gz

MAINTAINER=	Marc Espie <espie@openbsd.org>

BUILD_DEPENDS=	::devel/autoconf ::devel/automake

VERSION=2
LIB_DEPENDS= 	png.2::graphics/png \
		jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		kdecore.3::x11/kde/libs2 \
		kwin::x11/kde/base2

# QPL
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_CDROM=	"Not without the source"


CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		UIC_NOT_NEEDED=true

pre-configure:
	cd ${WRKDIST} && ${MAKE_PROGRAM} -f Makefile.cvs

.include <bsd.port.mk>

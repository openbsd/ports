# $OpenBSD: Makefile,v 1.4 2002/03/21 20:57:09 espie Exp $
# $FreeBSD: ports/graphics/vid/Makefile,v 1.5 2001/02/21 07:48:56 roger Exp $
#

COMMENT=	"Get images from USB cameras using the OV511(+) chipsets"

DISTNAME=	vid-1.0.1
CATEGORIES=	graphics
NEED_VERSION=   1.515

HOMEPAGE=	http://members.home.com/housel/

# GNU
PERMIT_PACKAGE_CDROM=	    Yes
PERMIT_PACKAGE_FTP=	    Yes
PERMIT_DISTFILES_CDROM=	    Yes
PERMIT_DISTFILES_FTP=	    Yes

MASTER_SITES=	http://members.home.com/housel/

BUILD_DEPENDS=	::graphics/netpbm
LIB_DEPENDS=	pbm,pgm,pnm,ppm::graphics/netpbm

# The port does not understand 'make all' or 'make install'
# so change the 'all_target' to be empty and use our own do-install handler.

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vid ${PREFIX}/bin

.include <bsd.port.mk>

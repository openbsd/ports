# $OpenBSD: Makefile,v 1.2 2001/07/22 04:32:21 pvalchev Exp $
# $FreeBSD: ports/graphics/vid/Makefile,v 1.5 2001/02/21 07:48:56 roger Exp $
#

COMMENT=	"Get images from USB cameras using the OV511(+) chipsets"

DISTNAME=	vid-1.0.1
CATEGORIES=	graphics
NEED_VERSION=   1.402

HOMEPAGE=	http://members.home.com/housel/

MAINTAINER=	ports@openbsd.org

# GNU
PERMIT_PACKAGE_CDROM=	    Yes
PERMIT_PACKAGE_FTP=	    Yes
PERMIT_DISTFILES_CDROM=	    Yes
PERMIT_DISTFILES_FTP=	    Yes

MASTER_SITES=	http://members.home.com/housel/

BUILD_DEPENDS=	picttoppm:netpbm-*:graphics/netpbm

# The port does not understand 'make all' or 'make install'
# so change the 'all_target' to be empty and use our own do-install handler.

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/vid ${PREFIX}/bin

.include <bsd.port.mk>

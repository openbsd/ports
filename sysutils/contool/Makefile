# $OpenBSD: Makefile,v 1.2 1998/10/18 05:02:10 marc Exp $
#

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.kfu.com/pub/

#MAINTAINER=	nsayer@quack.kfu.com
MAINTAINER=		ian@openbsd.org

LIB_DEPENDS=	xview\\.3\\.:${PORTSDIR}/x11/xview-lib

NO_CDROM=	"source code cannot be sold, nor can you incorporate the source code into a product which is subsequently sold"
NO_WRKSUBDIR=	yes
USE_IMAKE=	yes

pre-install:
	@${MKDIR} ${PREFIX}/lib/help

post-install:
	@${CAT} ${PKGDIR}/MESSAGE

.include <bsd.port.mk>

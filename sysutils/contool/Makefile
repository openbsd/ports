# $OpenBSD: Makefile,v 1.3 1999/10/29 00:32:04 ian Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		ian@openbsd.org

LIB_DEPENDS=	xview\\.3\\.:${PORTSDIR}/x11/xview-lib

NO_CDROM=	"source code cannot be sold, nor can you incorporate the source code into a product which is subsequently sold"
NO_WRKSUBDIR=	yes
USE_IMAKE=	yes

pre-install:
	@${MKDIR} ${PREFIX}/lib/help

.include <bsd.port.mk>

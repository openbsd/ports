# $OpenBSD: Makefile,v 1.5 2000/02/12 06:30:03 turan Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

NEED_VERSION=	1.191

LIB_DEPENDS=	xview\\.3\\.:${PORTSDIR}/x11/xview-lib

NO_CDROM=	"source code cannot be sold, nor can you incorporate the source code into a product which is subsequently sold"
WRKDIST=	${WRKDIR}
USE_IMAKE=	yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>

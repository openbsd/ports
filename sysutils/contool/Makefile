# $OpenBSD: Makefile,v 1.8 2000/03/19 16:43:42 espie Exp $

DISTNAME=	contool-3.3a
CATEGORIES=	sysutils
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.kfu.com/pub/

MAINTAINER=		ian@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	xview.3.:x11/xview-lib

NO_CDROM=	"source code cannot be sold, nor can you incorporate the source code into a product which is subsequently sold"
WRKDIST=	${WRKDIR}
USE_IMAKE=	Yes

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/lib/help

.include <bsd.port.mk>

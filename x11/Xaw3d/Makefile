# $OpenBSD: Makefile,v 1.4 1999/02/21 04:26:15 marc Exp $
#

DISTNAME=	Xaw3d-1.3
CATEGORIES=	x11

NEED_VERSION=	1.64

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	widgets/Xaw3d/R6.1

WRKSRC=		${WRKDIR}/xc/lib/Xaw3d
USE_IMAKE=	yes

post-extract:
	${MKDIR} ${WRKSRC}/X11/Xaw3d
	cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

post-install:
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

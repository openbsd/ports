# $OpenBSD: Makefile,v 1.5 1999/09/06 22:46:26 brad Exp $

DISTNAME=	Xaw3d-1.5
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= widgets/Xaw3d/R6.3

NEED_VERSION=	1.64

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

WRKSRC=		${WRKDIR}/xc/lib/Xaw3d

post-extract:
	@${MKDIR} ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ${LN} -sf ../../*.h .

post-install:
	@${MKDIR} ${PREFIX}/share/doc/Xaw3d
	${CP} ${WRKSRC}/README.XAW3D ${PREFIX}/share/doc/Xaw3d
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

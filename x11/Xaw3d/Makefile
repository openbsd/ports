# $OpenBSD: Makefile,v 1.6 2000/02/10 17:28:15 espie Exp $

DISTNAME=	Xaw3d-1.5
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= widgets/Xaw3d/R6.3

NEED_VERSION=	1.64

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=	yes

WRKDIST=		${WRKDIR}/xc/lib/Xaw3d

post-extract:
	@mkdir -p ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Xaw3d
	cp ${WRKSRC}/README.XAW3D ${PREFIX}/share/doc/Xaw3d
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.10 2000/05/16 18:47:20 espie Exp $

DISTNAME=	Xaw3d-1.5
CATEGORIES=	x11
NEED_VERSION=	1.219
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= widgets/Xaw3d/R6.3


MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=	Yes
FAKE=		Yes

WRKDIST=	${WRKDIR}/xc/lib/Xaw3d

post-extract:
	@mkdir -p ${WRKSRC}/X11/Xaw3d
	@cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/Xaw3d
	${INSTALL_DATA} ${WRKSRC}/README.XAW3D ${PREFIX}/share/doc/Xaw3d

.include <bsd.port.mk>

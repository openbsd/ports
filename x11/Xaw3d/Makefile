# OpenBSD makefile for:	Xaw3d
# Version required:	1.3
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/01/30 22:18:35 niklas Exp $
#

DISTNAME=	Xaw3d-1.3
CATEGORIES=	x11
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	widgets/Xaw3d/R6.1

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/xc/lib/Xaw3d
USE_IMAKE=	yes

post-extract:
	${MKDIR} ${WRKSRC}/X11/Xaw3d
	cd ${WRKSRC}/X11/Xaw3d; ln -sf ../../*.h .

post-install:
.if ${MACHINE_ARCH} != "alpha"
.if ${MACHINE_ARCH} == "mips"
	${LDCONFIG} -n ${PREFIX}/lib
.else
	${LDCONFIG} -m ${PREFIX}/lib
.endif
.endif

.include <bsd.port.mk>

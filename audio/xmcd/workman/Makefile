# OpenBSD makefile for: workman
# Version required:     1.3
# Date created:         29 April 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/21 01:38:04 angelos Exp $
#

DISTNAME=       WorkMan-1.3
PKGNAME=	workman-1.3
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/WorkMan

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	xview\\.3\\.:${PORTSDIR}/x11/xview-lib

WRKSRC=		${WRKDIR}/workman
USE_IMAKE=	yes

.include <bsd.port.mk>

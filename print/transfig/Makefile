# OpenBSD makefile for:	transfig
# Version required:	3.2
# Date created:		December 2, 1997
# Whom:			Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.2 1998/05/06 02:52:02 marc Exp $
#

DISTNAME=	transfig.3.2
PKGNAME=	transfig-3.2
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/transfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	Xpm\\.4\\.:${PORTSDIR}/graphics/xpm \
		jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg

RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

.include <bsd.port.mk>

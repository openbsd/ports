# $OpenBSD: Makefile,v 1.7 1999/07/27 21:34:10 espie Exp $

DISTNAME=	transfig.3.2.1
PKGNAME=	transfig-3.2.1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/drawing_tools/transfig

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg:${PORTSDIR}/graphics/jpeg

RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5


NEED_VERSION=1.88

USE_IMAKE=	yes

.include <bsd.port.mk>

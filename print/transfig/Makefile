# $OpenBSD: Makefile,v 1.8 1999/12/08 05:11:21 brad Exp $

DISTNAME=	transfig.3.2.1
PKGNAME=	transfig-3.2.1
CATEGORIES=	print
MASTER_SITES=	${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= applications/drawing_tools/transfig

NEED_VERSION=	1.88

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg
RUN_DEPENDS=	gs:${PORTSDIR}/print/ghostscript5

USE_IMAKE=	yes

.include <bsd.port.mk>

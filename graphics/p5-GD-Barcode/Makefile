# $OpenBSD: Makefile,v 1.8 2010/10/18 18:13:14 espie Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	0
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-GD->=1.18:graphics/p5-GD 
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>

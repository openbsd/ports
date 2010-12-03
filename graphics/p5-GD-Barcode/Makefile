# $OpenBSD: Makefile,v 1.10 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	create barcode image with GD

DISTNAME=	GD-Barcode-1.15
REVISION=	1
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	graphics/p5-GD>=1.18
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
USE_GROFF =	Yes

.include <bsd.port.mk>

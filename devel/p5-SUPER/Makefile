# $OpenBSD: Makefile,v 1.8 2015/01/21 06:13:47 bentley Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17
REVISION=	1

CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Sub-Identify

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>

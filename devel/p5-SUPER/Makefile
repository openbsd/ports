# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:33 naddy Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17
REVISION=	1

CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
PKG_ARCH=	*
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Sub-Identify

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>

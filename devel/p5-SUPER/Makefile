# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:17 sthen Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17
REVISION=	1

CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Sub-Identify

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>

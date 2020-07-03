# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:51 sthen Exp $

COMMENT=	wrapper around the Expect module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Expect-Simple-0.04
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Expect

.include <bsd.port.mk>

# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:38 naddy Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-NoWarnings-1.04
CATEGORIES=     devel
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Tester>=0.107

TEST_DEPENDS=devel/p5-Devel-StackTrace

.include <bsd.port.mk>

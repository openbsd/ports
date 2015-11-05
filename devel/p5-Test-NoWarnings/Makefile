# $OpenBSD: Makefile,v 1.13 2015/11/05 19:08:58 jca Exp $

COMMENT=        forbids warnings while testing

MODULES=	cpan
DISTNAME=	Test-NoWarnings-1.04
CATEGORIES=     devel
REVISION=	0

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Tester>=0.107

TEST_DEPENDS=devel/p5-Devel-StackTrace

.include <bsd.port.mk>

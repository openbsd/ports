# $OpenBSD: Makefile,v 1.4 2013/03/11 10:50:20 espie Exp $

COMMENT=	simple prefork server framework

DISTNAME=	Parallel-Prefork-0.11
REVISION=	1
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan

RUN_DEPENDS=	devel/p5-Class-Accessor-Lite \
		devel/p5-List-MoreUtils \
		devel/p5-Scope-Guard \
		sysutils/p5-Proc-Wait3
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=devel/p5-Test-Requires

.include <bsd.port.mk>

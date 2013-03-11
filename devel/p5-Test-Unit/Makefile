# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:23 espie Exp $

COMMENT=	Perl unit testing framework

DISTNAME=	Test-Unit-0.25
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Error \
		devel/p5-Class-Inner

.include <bsd.port.mk>

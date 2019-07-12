# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:11 sthen Exp $

COMMENT=	Perl unit testing framework

DISTNAME=	Test-Unit-0.25
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Error \
		devel/p5-Class-Inner

.include <bsd.port.mk>

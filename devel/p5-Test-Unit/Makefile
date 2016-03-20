# $OpenBSD: Makefile,v 1.7 2016/03/20 19:56:39 naddy Exp $

COMMENT=	Perl unit testing framework

DISTNAME=	Test-Unit-0.25
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Devel-Symdump \
		devel/p5-Error \
		devel/p5-Class-Inner

.include <bsd.port.mk>
